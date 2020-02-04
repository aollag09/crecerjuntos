package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exception.NotLoginException;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.data.Score;
import com.crecerjuntos.front.exercise.view.error.CommonErrorView;
import com.crecerjuntos.front.exercise.view.error.DatabaseErrorView;
import com.crecerjuntos.front.exercise.view.error.NonExistingLevelView;
import com.crecerjuntos.front.exercise.view.error.NotLoginErrorView;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.ProgressServices;
import com.crecerjuntos.front.util.ScoreServices;
import com.crecerjuntos.front.view.Result;
import com.crecerjuntos.model.exception.DatabaseException;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.NumberField;
import com.vaadin.flow.component.textfield.PasswordField;
import com.vaadin.flow.router.BeforeEvent;
import com.vaadin.flow.router.HasUrlParameter;
import com.vaadin.flow.server.VaadinSession;
import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Random;
import java.util.concurrent.TimeUnit;

public abstract class AbstractExerciseView extends VerticalLayout
    implements HasUrlParameter<String> {

  private static final Logger LOGGER = LoggerFactory.getLogger(AbstractExerciseView.class);

  protected static final long SEED = System.nanoTime();

  protected enum State {
    START,
    GAME,
    END
  }

  /** Randomness */
  protected final Random random;

  /** State of the current game */
  protected State state;

  /** Associated exercise data */
  protected final Exercise exercise;

  /** Time when the user start the current exercise */
  protected long startTime;

  /** The selected level of the exercise */
  protected int level;

  /** The score of the exercise */
  protected Score score;

  /** Identifier of the current user session */
  protected final String session;

  // COMMON UI ELEMENTS

  /** Title of the exercise */
  protected Component title;

  /** Instructions */
  protected Component instructions;

  /** Start button */
  protected Button start;

  protected AbstractExerciseView(final Exercise exercise) {
    this.random = new Random(SEED);
    this.state = State.START;
    this.exercise = exercise;
    this.session = VaadinSession.getCurrent().getSession().getId();
    buildStartDiv();
  }

  private void buildStartDiv() {
    title = new H2(getTranslation(exercise.getTitle()));
    add(title);

    VerticalLayout instructionDiv = new VerticalLayout();
    instructionDiv.addClassName(Constants.ClassStyle.Exercises.INSTRUCTIONS);
    instructions = new Text(getTranslation(exercise.getInstructions()));
    instructionDiv.add(instructions);

    start =
        new Button(
            getTranslation(Constants.Resource.Strings.Exercises.START), new Icon(VaadinIcon.PLAY));
    start.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    start.addClassName(Constants.ClassStyle.Exercises.START);
    start.addClickShortcut(Key.ENTER);
    start.addClickListener(
        event -> {
          start();
        });
    instructionDiv.add(start);
    add(instructionDiv);
  }

  private void start() {
    title
        .getElement()
        .setText(
            getTranslation(exercise.getTitle())
                + " "
                + getTranslation(Constants.Resource.Strings.Exercises.LEVEL)
                + ": "
                + level);
    startTime = System.currentTimeMillis();
    start.setVisible(false);
    state = State.GAME;
    try {
      ProgressServices.start(exercise, level);
    } catch (DatabaseException e) {
      UI.getCurrent().navigate(DatabaseErrorView.class);
    } catch (NotLoginException e) {
      UI.getCurrent().navigate(NotLoginErrorView.class);
    }
    onStart();
  }

  protected abstract void onStart();

  protected abstract Score computeScore();

  protected void end() {
    // compute the score based on exercise KPIs
    score = computeScore();

    // save the computed score in the current session
    ScoreServices.save(score);

    // store the progression & score in the database
    try {
      ProgressServices.end(exercise, level, score.getScore());
    } catch (DatabaseException e) {
      UI.getCurrent().navigate(DatabaseErrorView.class);
    } catch (NotLoginException e) {
      UI.getCurrent().navigate(NotLoginErrorView.class);
    }

    // Navigate to result page
    UI.getCurrent().navigate(Result.class);
  }

  protected Pair<VerticalLayout, NumberField> buildScore(){
    VerticalLayout layout = new VerticalLayout();
    layout.addClassName(Constants.ClassStyle.Exercises.ADMIN);
    layout.setWidth("400px");
    layout.setAlignItems(Alignment.CENTER);

    NumberField score = new NumberField(getTranslation(Constants.Resource.Strings.Result.SCORE));
    score.setMax(100);
    score.setMin(0);
    score.setStep(10);
    score.setValue(50.0);
    score.setHasControls(true);
    score.addClassName(Constants.ClassStyle.Login.FORM);
    layout.add(score);

    return new Pair<>(layout, score);
  }

  protected Component buildAdminValidation() {
    VerticalLayout layout = new VerticalLayout();
    layout.addClassName(Constants.ClassStyle.Exercises.ADMIN);
    layout.setWidth("400px");
    layout.setAlignItems(Alignment.CENTER);

    PasswordField password =
        new PasswordField(getTranslation(Constants.Resource.Strings.Exercises.ADMIN_PASSWORD));
    password.addClassName(Constants.ClassStyle.Login.FORM);
    layout.add(password);

    Button validate = new Button(getTranslation(Constants.Resource.Strings.Exercises.VALIDATE));
    validate.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
    validate.addClickShortcut(Key.ENTER);
    validate.addClassName(Constants.ClassStyle.Login.FORM);
    validate.addClickListener(
        event -> {
          if (Constants.ADMIN_PASSWORD.equals(password.getValue())) {
            end();
          } else {
            Notification.show(getTranslation(Constants.Resource.Strings.Login.WRONG_PASSWORD));
            password.setInvalid(true);
            password.setClearButtonVisible(true);
          }
        });
    layout.add(validate);

    return layout;
  }

  protected void nonExistingLevel() {
    UI.getCurrent().navigate(NonExistingLevelView.class);
  }

  protected void error(final String error, final Throwable throwable) {
    LOGGER.error(error, throwable);
    UI.getCurrent().navigate(CommonErrorView.class);
  }

  protected long getDurationMillis() {
    return System.currentTimeMillis() - startTime;
  }

  protected String getDurationString() {
    long millis = getDurationMillis();
    return String.format(
        "%d min, %d sec",
        TimeUnit.MILLISECONDS.toMinutes(millis),
        TimeUnit.MILLISECONDS.toSeconds(millis)
            - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(millis)));
  }

  @Override
  public void setParameter(BeforeEvent event, String parameter) {
    if (parameter != null) {
      level = Integer.parseInt(parameter);
      if ((level > exercise.getNbLevels()) || (level < 0)) nonExistingLevel();
    }
  }
}
