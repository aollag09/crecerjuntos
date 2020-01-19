package com.crecerjuntos.front.view;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.front.util.Section;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.FlexComponent;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.provider.ListDataProvider;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Route(Constants.Routes.LOGIN)
/* Import custom style sheet */
@StyleSheet("crecerjuntos.css")
@PageTitle("Crecer Juntos Login")
public class Login extends VerticalLayout {

  public static final Logger LOGGER = LoggerFactory.getLogger(Login.class);

  public Login() {
    HorizontalLayout layout = new HorizontalLayout();
    layout.add(buildTeresa());
    layout.add(buildLogin());
    setAlignItems(FlexComponent.Alignment.CENTER);
    add(layout);
  }

  private Component buildTeresa() {
    return new Image("resources/img/teresa.jpg", "teresa");
  }

  private Component buildLogin() {
    VerticalLayout login = new VerticalLayout();

    Text text = new Text("Please enter the following information");
    login.add(text);

    TextField username = new TextField("Username");
    username.addClassName("home-layout__login");
    login.add(username);

    ComboBox<String> section = new ComboBox<>("Section Name");
    section.setDataProvider(new ListDataProvider<>(Section.list()));
    section.setValue(Section.PRIMARIO.getName());
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

              // log in current user
              LoginServices.login(username.getValue(), section.getValue());

              // Go to user dashboard
              UI.getCurrent().navigate(Home.class);

            } else {
              throw new RuntimeException("UI is not accessible");
            }
          }
        });
    login.add(log);

    return login;
  }
}
