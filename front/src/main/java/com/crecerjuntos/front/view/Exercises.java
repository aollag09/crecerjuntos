package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.ExerciseEnum;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.polymertemplate.Id;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Routes.EXERCISES, layout = MainAppLayout.class)
@StyleSheet(Constants.StyleSheet.CERCER_JUNTOS)
@PageTitle("Exercices")
public class Exercises extends VerticalLayout {

  @Id("grid")
  private Grid<Exercise> grid;

  private Grid exercices;

  public Exercises() {
    H2 title = new H2("Exercices");
    add(title);
    buildExercisesDiv();
  }

  private void buildExercisesDiv() {
    ExerciseEnum.list().forEach(this::buildExercise);
  }

  private void buildExercise(final Exercise exercise) {

    VerticalLayout exerciceCard = new VerticalLayout();
    exerciceCard.addClassName(Constants.ClassStyle.Exercises.CARD);

    HorizontalLayout exerciceHeader = new HorizontalLayout();
    exerciceHeader.addClassName(Constants.ClassStyle.Exercises.HEADER);

    // Status
    Span status = new Span("ready");
    status.addClassName(Constants.ClassStyle.Exercises.STATUS_READY);
    exerciceHeader.add(status);

    // Name
    VerticalLayout gameInfo = new VerticalLayout();
    gameInfo.addClassName(Constants.ClassStyle.Exercises.GAME_INFO);
    H3 name = new H3(exercise.getName());
    name.addClassName(Constants.ClassStyle.Exercises.NAME);
    exerciceHeader.add(name);

    // Difficulty, number of levels, time
    HorizontalLayout details = new HorizontalLayout();
    Div difficulty = new Div();
    difficulty.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    difficulty.add(VaadinIcon.FLAG.create());
    difficulty.add(space() + exercise.getDifficulty());

    Div nbLevels = new Div();
    nbLevels.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    nbLevels.add(VaadinIcon.LIST.create());
    nbLevels.add(space() + exercise.getNbLevels() + " levels");

    Div time = new Div();
    time.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    time.add(VaadinIcon.TIMER.create());
    time.add(space() + exercise.getAverageTime() + " hours");

    details.add(difficulty, nbLevels, time);
    exerciceHeader.add(details);

    VerticalLayout levels = new VerticalLayout();
    levels.addClassName(Constants.ClassStyle.Exercises.LEVELS);
    for (int levelId = 0; levelId < exercise.getNbLevels(); levelId++) {
      HorizontalLayout level = new HorizontalLayout();
      level.addClassName(Constants.ClassStyle.Exercises.LEVEL);
      level.add(VaadinIcon.CIRCLE_THIN.create());
      level.add(space());
      level.add(exercise.getLevel(levelId).getName());
      levels.add(level);
    }

    exerciceCard.add(exerciceHeader);
    exerciceCard.add(levels);
    add(exerciceCard);
  }

  private String space() {
    return "      ";
  }
}
