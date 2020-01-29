package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.front.util.ProgressServices;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.HasStyle;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.*;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.server.VaadinServlet;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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

    // List the student achievements
    List<Achievement> dones = getBestLevelsDone(exercise);

    VerticalLayout exerciseCard = new VerticalLayout();
    exerciseCard.addClassName(Constants.ClassStyle.Exercises.CARD);

    HorizontalLayout exerciseHeader = new HorizontalLayout();
    exerciseHeader.addClassName(Constants.ClassStyle.Exercises.HEADER);

    // Status
    if (dones.size() == 0) {
      Span status = new Span(getTranslation(Constants.Resource.Strings.Exercises.READY));
      status.addClassName(Constants.ClassStyle.Exercises.STATUS_READY);
      exerciseHeader.add(status);
    }else if( dones.size() != ex)

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
    difficulty.add(buildIcon(VaadinIcon.FLAG, Color.BLUE));
    difficulty.add(exercise.getDifficulty().toString());

    Div nbLevels = new Div();
    nbLevels.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    nbLevels.add(buildIcon(VaadinIcon.LIST, Color.BLUE));
    nbLevels.add(
        exercise.getNbLevels() + " " + getTranslation(Constants.Resource.Strings.Exercises.LEVELS));

    Div time = new Div();
    time.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    time.add(buildIcon(VaadinIcon.TIMER, Color.BLUE));
    time.add(
        exercise.getAverageTime()
            + " "
            + getTranslation(Constants.Resource.Strings.Exercises.HOURS));

    details.add(difficulty, nbLevels, time);
    exerciseHeader.add(details);

    VerticalLayout levels = new VerticalLayout();
    levels.addClassName(Constants.ClassStyle.Exercises.LEVELS);
    for (int levelId = 0; levelId < exercise.getNbLevels(); levelId++) {
      levels.add(buildLevel(exercise, levelId, dones));
    }

    exerciseCard.add(exerciseHeader);
    exerciseCard.add(levels);
    add(exerciseCard);
  }

  private HorizontalLayout buildLevel(
      final Exercise exercise, final int levelId, List<Achievement> dones) {

    Optional<Achievement> done =
        dones.stream()
            .filter(achievement -> achievement.getLevel() == levelId)
            .max(Comparator.comparingInt(Achievement::getScore));

    HorizontalLayout level = new HorizontalLayout();
    level.addClassName(Constants.ClassStyle.Exercises.LEVEL);

    if (!done.isPresent()) level.add(buildIcon(VaadinIcon.CLIPBOARD_TEXT, Color.BLUE));
    else {
      if (done.get().getScore() >= Constants.Exercises.GOOD_SCORE) {
        level.add(buildIcon(VaadinIcon.CHECK_CIRCLE, Color.GREEN));
        level.add(buildScore(done.get().getScore(), Color.GREEN));
      } else if (done.get().getScore() >= Constants.Exercises.MINIMUM_SCORE) {
        level.add(buildIcon(VaadinIcon.CHECK_CIRCLE, Color.ORANGE));
        level.add(buildScore(done.get().getScore(), Color.ORANGE));
      } else {
        level.add(buildIcon(VaadinIcon.CHECK_CIRCLE, Color.RED));
        level.add(buildScore(done.get().getScore(), Color.RED));
      }
    }

    Anchor anchor = new Anchor();
    anchor.addClassName(Constants.ClassStyle.Exercises.ANCHOR);
    anchor.setText(getTranslation(exercise.getLevel(levelId).getName()));
    anchor.setHref(buildLevelURI(exercise, levelId));
    level.add(anchor);
    return level;
  }

  private List<Achievement> getBestLevelsDone(final Exercise exercise){
    Student student = LoginServices.getStudent();
    List<Achievement> dones = new ArrayList<Achievement>();
    if (student != null && !student.getName().equals(Student.DEFAULT_NAME)) {
      dones = ProgressServices.getDone(student).stream()
              .filter(achievement -> exercise.getName().equals(achievement.getExercise()))
              .collect(Collectors.groupingBy(Achievement::getLevel))
              .values().stream()
              .map( achievements -> achievements.stream().max(Comparator.comparingInt(Achievement::getScore)))
              .filter(Optional::isPresent)
              .map(Optional::get)
              .collect(Collectors.toList());
    }
    return dones;
  }

  private Component buildScore(int score, Color color) {
    Span text = new Span(String.valueOf(score));
    text.addClassName(Constants.ClassStyle.Exercises.SCORE);
    addColor(text, color);
    return text;
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

  private Component buildIcon(final VaadinIcon vIcon, final Color color) {
    Icon icon = vIcon.create();
    addColor(icon, color);
    return icon;
  }

  private void addColor(final HasStyle component, final Color color) {
    switch (color) {
      case RED:
        component.addClassName(Constants.ClassStyle.Exercises.RED);
        break;
      case GREEN:
        component.addClassName(Constants.ClassStyle.Exercises.GREEN);
        break;
      case ORANGE:
        component.addClassName(Constants.ClassStyle.Exercises.ORANGE);
        break;
      case BLUE:
        component.addClassName(Constants.ClassStyle.Exercises.BLUE);
        break;
    }
  }

  public enum Color {
    GREEN,
    ORANGE,
    RED,
    BLUE
  }
}
