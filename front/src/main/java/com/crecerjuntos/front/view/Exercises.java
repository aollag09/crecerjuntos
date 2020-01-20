package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.ExerciseEnum;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.*;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.polymertemplate.Id;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.VaadinServlet;

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
    H3 name = new H3(exercise.getName());
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
    nbLevels.add(exercise.getNbLevels() + " levels");

    Div time = new Div();
    time.addClassName(Constants.ClassStyle.Exercises.DETAIL);
    time.add(buildIcon(VaadinIcon.TIMER));
    time.add(exercise.getAverageTime() + " hours");

    details.add(difficulty, nbLevels, time);
    exerciseHeader.add(details);

    VerticalLayout levels = new VerticalLayout();
    levels.addClassName(Constants.ClassStyle.Exercises.LEVELS);
    for (int levelId = 0; levelId < exercise.getNbLevels(); levelId++) {
      HorizontalLayout level = new HorizontalLayout();
      level.addClassName(Constants.ClassStyle.Exercises.LEVEL);
      level.add(buildIcon(VaadinIcon.CLIPBOARD_TEXT));

      Anchor anchor = new Anchor();
      anchor.addClassName(Constants.ClassStyle.Exercises.ANCHOR);
      anchor.setText(exercise.getLevel(levelId).getName());
      anchor.setHref(
          VaadinServlet.getCurrent().getServletContext().getContextPath()
              + "/"
              + exercise.getUri());
      level.add(anchor);

      levels.add(level);
    }

    exerciseCard.add(exerciseHeader);
    exerciseCard.add(levels);
    add(exerciseCard);
  }

  public Component buildIcon(final VaadinIcon vIcon) {
    Icon icon = vIcon.create();
    icon.addClassName(Constants.ClassStyle.Exercises.ICON);
    return icon;
  }
}
