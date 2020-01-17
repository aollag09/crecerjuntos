package com.crecerjuntos.front.views;

import com.crecerjuntos.front.MainLayout;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = "exercices", layout = MainLayout.class)
@PageTitle("Exercices")
public class Exercices extends VerticalLayout {

  public Exercices() {
    H2 title = new H2("Exercices");
    add(title);
  }
}
