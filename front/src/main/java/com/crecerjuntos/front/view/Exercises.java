package com.crecerjuntos.front.view;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.ExerciseEnum;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.polymertemplate.Id;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Routes.EXERCISES, layout = MainAppLayout.class)
@PageTitle("Exercices")
public class Exercises extends VerticalLayout {

  @Id("grid")
  private Grid<Exercise> grid;

  public Exercises() {
    H2 title = new H2("Exercices");
    add(title);
    buildGrid();
  }

  private void buildGrid() {
    grid = new Grid<>();
    grid.setItems(ExerciseEnum.list());
    grid.addColumn(Exercise::getName).setHeader("Exercice Name");
    grid.addColumn(Exercise::getNbLevels).setHeader("Number of Levels");
    add(grid);
  }
}
