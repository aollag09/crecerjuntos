package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.data.Score;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.ProgressServices;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.BeforeEvent;
import com.vaadin.flow.router.HasUrlParameter;
import com.vaadin.flow.server.VaadinSession;

import java.util.Random;
import java.util.concurrent.TimeUnit;

public abstract class AbstractExerciseView extends VerticalLayout
    implements HasUrlParameter<String> {

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
    instructions = new Text(getTranslation(Constants.Resource.Strings.Dactylographie.INSTRUCTIONS));
    instructionDiv.add(instructions);

    start = new Button(getTranslation(Constants.Resource.Strings.Exercises.START));
    start.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    start.addClassName(Constants.ClassStyle.Exercises.START);
    start.addClickListener(
        event -> {
          start();
        });
    instructionDiv.add(start);
    add(instructionDiv);
  }

  private void start() {
    startTime = System.currentTimeMillis();
    start.setVisible(false);
    state = State.GAME;
    ProgressServices.start(exercise, level);
    onStart();
  }

  protected abstract void onStart();

  protected abstract Score computeScore();

  protected void end(){
      score = computeScore();
      ProgressServices.end(exercise, level, score.getScore());
  }

  protected long getDurationMillis() {
    return System.currentTimeMillis() - startTime;
  }

  protected String getDurationString(){
    long millis = getDurationMillis();
    return String.format("%d min, %d sec", 
        TimeUnit.MILLISECONDS.toMinutes(millis),
        TimeUnit.MILLISECONDS.toSeconds(millis) - 
        TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(millis)));
  }

  @Override
  public void setParameter(BeforeEvent event, String parameter) {
    if (parameter != null) {
      level = Integer.parseInt(parameter);
      if ((level > exercise.getNbLevels()) || (level < 0)) {
        throw new RuntimeException(
            "Required level : '"
                + level
                + "' of exercise :"
                + getTranslation(exercise.getTitle())
                + " doesn't exists");
      }
    }
  }
}
