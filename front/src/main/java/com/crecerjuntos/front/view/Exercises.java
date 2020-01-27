package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.*;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.server.VaadinServlet;

@com.vaadin.flow.router.Route(value = Constants.Route.EXERCISES, layout = MainAppLayout.class)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle(Constants.Title.TITLE)
public class Exercises extends VerticalLayout {

  public Exercises() {
    H2 title = new H2(getTranslation(Constants.Resource.Strings.Exercises.TITLE));
    add(title);
    buildExercisesDiv();
  }

  private void buildExercisesDiv() {
    ExerciseEnum.list().forEach(this::buildExercise);
  }

  private void buildExercise(final Exercise exercise) {
    VerticalLayout exerciseCard = new VerticalLayout();
    exerciseCard.addClassName(Constants.ClassStyle.Exercises.CARD);

    HorizontalLayout exerciseHeader = new HorizontalLayout();
    exerciseHeader.addClassName(Constants.ClassStyle.Exercises.HEADER);

    // Status
    Span status = new Span("ready");
    status.addClassName(Constants.ClassStyle.Exercises.STATUS_READY);
    exerciseHeader.add(status);

    // Name
    VerticalLayout gameInfo = new VerticalLayout();
    gameInfo.addClassName(Constants.ClassStyle.Exercises.GAME_INFO);
    H3 name = new H3(getTranslation(exercise.getTitle()));
    name.addClassName(Constants.ClassStyle.Exercises.NAME);
    exerciseHeader.add(name);

    // Difficulty, number of levels, time
    HorizontalLayout details = new HorizontalLayout();
    Div difficulty = new Div();
    difficulty.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    difficulty.add(buildIcon(VaadinIcon.FLAG));
    difficulty.add(exercise.getDifficulty().toString());

    Div nbLevels = new Div();
    nbLevels.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    nbLevels.add(buildIcon(VaadinIcon.LIST));
    nbLevels.add(
        exercise.getNbLevels() + " " + getTranslation(Constants.Resource.Strings.Exercises.LEVELS));

    Div time = new Div();
    time.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    time.add(buildIcon(VaadinIcon.TIMER));
    time.add(
        exercise.getAverageTime()
            + " "
            + getTranslation(Constants.Resource.Strings.Exercises.HOURS));

    details.add(difficulty, nbLevels, time);
    exerciseHeader.add(details);

    VerticalLayout levels = new VerticalLayout();
    levels.addClassName(Constants.ClassStyle.Exercises.LEVELS);
    for (int levelId = 0; levelId < exercise.getNbLevels(); levelId++) {
      levels.add(buildLevel(exercise, levelId));
    }

    exerciseCard.add(exerciseHeader);
    exerciseCard.add(levels);
    add(exerciseCard);
  }

  private HorizontalLayout buildLevel(final Exercise exercise, final int levelId) {
    HorizontalLayout level = new HorizontalLayout();
    level.addClassName(Constants.ClassStyle.Exercises.LEVEL);
    level.add(buildIcon(VaadinIcon.CLIPBOARD_TEXT));

    Anchor anchor = new Anchor();
    anchor.addClassName(Constants.ClassStyle.Exercises.ANCHOR);
    anchor.setText(getTranslation(exercise.getLevel(levelId).getName()));
    anchor.setHref(buildLevelURI(exercise, levelId));
    level.add(anchor);
    return level;
  }

  private String buildLevelURI(final Exercise exercise, final int levelId) {
    StringBuilder uri = new StringBuilder();

    // build root
    uri.append(VaadinServlet.getCurrent().getServletContext().getContextPath());

    // append exercise
    uri.append("/");
    uri.append(exercise.getUri());

    // append level
    uri.append("/");
    uri.append(levelId);

    return uri.toString();
  }

  public Component buildIcon(final VaadinIcon vIcon) {
    Icon icon = vIcon.create();
    icon.addClassName(Constants.ClassStyle.Exercises.ICON);
    return icon;
  }
}
