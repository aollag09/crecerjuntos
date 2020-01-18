package com.crecerjuntos.front.view;

import com.crecerjuntos.front.Constants;
import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercice.Exercice;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.polymertemplate.Id;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Routes.EXERCICES, layout = MainAppLayout.class)
@PageTitle("Exercices")
public class Exercices extends VerticalLayout {

  @Id("grid")
  private Grid<Exercice> grid;

  public Exercices() {
    H2 title = new H2("Exercices");
    add(title);
  }
}
