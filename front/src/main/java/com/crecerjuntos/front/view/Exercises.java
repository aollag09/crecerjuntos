package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.ExerciseEnum;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
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
import com.vaadin.flow.data.renderer.ComponentRenderer;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

import java.util.List;

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
    buildExercises();
  }

  private void buildExercisesDiv() {

    List<Exercise> exercises = ExerciseEnum.list();
  }

  private void buildExercises() {

    grid = new Grid<>();
    grid.setItems(ExerciseEnum.list());
    grid.setDetailsVisibleOnClick(true);

    grid.addColumn(
        new ComponentRenderer<>(
            exercice -> {

              // Status
              Span status = new Span("ready");
              status.addClassName("exercises-layout__status-ready");

              // Name
              VerticalLayout gameInfo = new VerticalLayout();
              H3 name = new H3(exercice.getName());
              name.addClassName("exercises-layout__name");
              gameInfo.add(name);

              // Difficulty, number of levels, time
              HorizontalLayout details = new HorizontalLayout();
              Div difficulty = new Div();
              difficulty.add(VaadinIcon.FLAG.create());
              difficulty.add(exercice.getDifficulty().name());

              Div nbLevels = new Div();
              nbLevels.add(VaadinIcon.LIST.create());
              nbLevels.add(exercice.getNbLevels() + " levels");

              Div time = new Div();
              time.add(VaadinIcon.TIMER.create());
              time.add(exercice.getAverageTime() + " hours");

              details.add(difficulty, nbLevels, time);
              gameInfo.add(details);

              // button for saving the name to backend
              Button go =
                  new Button(
                      "Go",
                      event -> {
                        UI.getCurrent().navigate(Constants.Routes.LOGIN);
                      });

              return new HorizontalLayout(status, gameInfo, go);
            }));

    grid.addClassName("exercise-layout__grid");
    add(grid);
  }
}
