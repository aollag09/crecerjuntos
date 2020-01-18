package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.ExerciseEnum;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.polymertemplate.Id;
import com.vaadin.flow.data.renderer.ComponentRenderer;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Routes.EXERCISES, layout = MainAppLayout.class)
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

  private void buildExercises() {

    grid = new Grid<>();
    grid.setItems(ExerciseEnum.list());
    grid.setDetailsVisibleOnClick(true);

    grid.addColumn(
        new ComponentRenderer<>(
            exo -> {

              // text field for entering a new name for the person
              H3 name = new H3(exo.getName());

              // button for saving the name to backend
              Button go =
                  new Button(
                      "Go",
                      event -> {
                        UI.getCurrent().navigate(Constants.Routes.HOME);
                      });

              return new HorizontalLayout(name, go);
            }));

    add(grid);
  }

}
