package com.crecerjuntos.front.views;

import com.crecerjuntos.front.MainLayout;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.PWA;

/*
 * Tells Vaadin to direct the root URL to this view. The URL parameter is optional and is derived
 * from the class name, if not given
 */
@Route(value = "", layout = MainLayout.class)
@PageTitle("Crecer Juntos")

/*
 * Tells Vaadin to activate automatic PWA features Progressive Web Apps (PWA) combine new
 * technologies with established best practices for creating reliable, accessible, and engaging
 * experiences. They give users a native-like experience with a user friendly opt-in installation
 * flow.
 */
@PWA(name = "Crecer Juntos Project", shortName = "CrecerJuntos")
public class Home extends VerticalLayout {

  public Home() {
    H2 title = new H2("Welcome to Crecer Juntos");
    add(title);
  }
}
