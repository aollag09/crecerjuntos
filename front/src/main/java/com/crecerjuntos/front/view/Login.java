package com.crecerjuntos.front.view;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.model.Student;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.EmailField;
import com.vaadin.flow.component.textfield.PasswordField;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(Constants.Route.LOGIN)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle("Crecer Juntos Login")
public class Login extends VerticalLayout {

  public Login() {
    HorizontalLayout layout = new HorizontalLayout();
    layout.add(buildTeresa());
    layout.add(buildLogin());
    layout.addClassName(Constants.ClassStyle.Login.PANEL);
    add(layout);
  }

  private Component buildTeresa() {
    Image image = new Image(Constants.Resource.IMG_TERESA, "teresa");
    image.addClassName(Constants.ClassStyle.Login.TERESA);
    return image;
  }

  private Component buildLogin() {
    VerticalLayout login = new VerticalLayout();
    login.addClassName(Constants.ClassStyle.Login.LOGIN);

    H2 title = new H2(getTranslation(Constants.Resource.Strings.TITLE));
    login.add(title);

    EmailField email = new EmailField(getTranslation(Constants.Resource.Strings.Login.MAIL));
    email.addClassName(Constants.ClassStyle.Login.FORM);
    email.setClearButtonVisible(true);
    email.setErrorMessage(getTranslation(Constants.Resource.Strings.Login.WRONG_MAIL));
    login.add(email);

    PasswordField password = new PasswordField();
    password.addClassName(Constants.ClassStyle.Login.FORM);

    Button log = new Button(getTranslation(Constants.Resource.Strings.Login.LOGIN));
    log.addClassName(Constants.ClassStyle.Login.FORM);
    log.addClickShortcut(Key.ENTER);
    log.addClickListener(
        event -> {
          if (email.isEmpty()) {
            Notification.show(getTranslation(Constants.Resource.Strings.Login.EMPTY_USERNAME));
          } else {
            if (getUI().isPresent()) {

              // Check user is created
              Student student = LoginServices.get(email.getValue());
              boolean exists = student != null;
              if (exists) {

                if (student.getPassword().equals(password.getValue())) {
                  // log in current user
                  LoginServices.login(student);

                  // Go to user dashboard
                  UI.getCurrent().navigate(Home.class);
                } else {
                  Notification.show(
                      getTranslation(Constants.Resource.Strings.Login.WRONG_PASSWORD));
                  password.setInvalid(true);
                  password.setClearButtonVisible(true);
                }
              } else {
                Notification.show(
                    getTranslation(
                        Constants.Resource.Strings.Login.DOES_NOT_EXIST, email.getValue()));
              }
            } else {
              throw new RuntimeException("UI is not accessible");
            }
          }
        });
    login.add(log);

    Button create = new Button(getTranslation(Constants.Resource.Strings.Login.CREATE));
    create.addClassName(Constants.ClassStyle.Login.FORM);
    create.addClickListener(
        event -> {
          UI.getCurrent().navigate(Create.class);
        });
    login.add(create);

    return login;
  }
}
