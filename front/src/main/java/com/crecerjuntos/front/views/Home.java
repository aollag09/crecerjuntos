package com.crecerjuntos.front.views;

import com.crecerjuntos.front.Constants;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.dependency.CssImport;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.FlexComponent;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.PWA;
import com.vaadin.flow.server.VaadinSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/*
 * Tells Vaadin to activate automatic PWA features Progressive Web Apps (PWA) combine new
 * technologies with established best practices for creating reliable, accessible, and engaging
 * experiences. They give users a native-like experience with a user friendly opt-in installation
 * flow.
 */
@PWA(name = "Crecer Juntos Project", shortName = "CrecerJuntos")
@Route("")
/* Import custom style sheet */
@CssImport("stylesheets/shared-styles.css")
@PageTitle("Crecer Juntos Home")
public class Home extends VerticalLayout {

  public static final Logger LOGGER = LoggerFactory.getLogger(Home.class);

  public Home() {
    HorizontalLayout layout = new HorizontalLayout();
    layout.add(buildTeresa());
    layout.add(buildLogin());
    setAlignItems(FlexComponent.Alignment.CENTER);
    add(layout);
  }

  private Component buildTeresa() {
    Image img = new Image("resources/img/teresa.jpg", "teresa");
    return img;
  }

  private Component buildLogin() {
    VerticalLayout login = new VerticalLayout();

    Text text = new Text("Please enter the following information");
    login.add(text);

    TextField username = new TextField("Username");
    username.addClassName("home-layout__login");
    login.add(username);

    ComboBox<String> section = new ComboBox<>("Section Name");
    section.addClassName("home-layout__login");
    login.add(section);

    Button log = new Button("Login");
    log.addClassName("home-layout__login");
    log.addClickListener(
        event -> {
          if (username.isEmpty()) {
            Notification.show("The username should not be empty");
          } else {
            if (getUI().isPresent()) {
              VaadinSession session = UI.getCurrent().getSession();

              // Store user name in the current session
              LOGGER.info("New session : username : " + username.getValue() + " section : " + section.getValue());
              session.setAttribute(Constants.SESSION_USERNAME, username.getValue());
              session.setAttribute(Constants.SESSION_SECTION, section.getValue());

              // Go to user dashboard
              UI.getCurrent().navigate(Dashboard.class);

            } else {
              throw new RuntimeException("UI is not accessible");
            }
          }
        });
    login.add(log);

    return login;
  }
}
