package com.crecerjuntos.front.views;

import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.login.LoginForm;
import com.vaadin.flow.component.orderedlayout.FlexComponent;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.router.RouterLink;
import com.vaadin.flow.server.PWA;

/*
 * Tells Vaadin to activate automatic PWA features Progressive Web Apps (PWA) combine new
 * technologies with established best practices for creating reliable, accessible, and engaging
 * experiences. They give users a native-like experience with a user friendly opt-in installation
 * flow.
 */
@PWA(name = "Crecer Juntos Project", shortName = "CrecerJuntos")
@Route("")
@PageTitle("Crecer Juntos Home")
public class Home extends VerticalLayout {

  public Home() {
    HorizontalLayout layout = new HorizontalLayout();
    layout.add(buildTeresa());
    layout.add(buildLogin());
    setAlignItems(FlexComponent.Alignment.CENTER);
    add(layout);
  }

  private Component buildTeresa() {
    Image img = new Image();
    return img;
  }

  private Component buildLogin() {
    VerticalLayout login = new VerticalLayout();

    Text text = new Text("Please enter the following information");
    login.add(text);

    TextField userName = new TextField("Username");
    userName.setSizeFull();
    login.add(userName);

    ComboBox<String> section = new ComboBox<>("Section Name");
    section.setSizeFull();
    login.add(section);

    Button log = new Button("Login");
    log.setSizeFull();
    login.add(log);

    return login;
  }
}
