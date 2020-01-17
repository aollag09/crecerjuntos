package com.crecerjuntos.front;

import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.PWA;

/*
 * Tells Vaadin to direct the root URL to this view. The URL parameter is optional and is derived
 * from the class name, if not given
 */
@Route("")

/*
 * Tells Vaadin to activate automatic PWA features Progressive Web Apps (PWA) combine new
 * technologies with established best practices for creating reliable, accessible, and engaging
 * experiences. They give users a native-like experience with a user friendly opt-in installation
 * flow.
 */
@PWA(name = "Crecer Juntos Project", shortName = "CrecerJuntos")
public class MainView extends VerticalLayout {

  public MainView() {
    Button button = new Button("Click me", event -> Notification.show("Clicked!"));
    add(button);
  }
}
