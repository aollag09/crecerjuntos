package com.crecerjuntos.front.view;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.model.Section;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.provider.ListDataProvider;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(Constants.Route.LOGIN)
@StyleSheet(Constants.StyleSheet.CERCER_JUNTOS)
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

    TextField username = new TextField(getTranslation(Constants.Resource.Strings.Login.MAIL));
    username.addClassName(Constants.ClassStyle.Login.FORM);
    login.add(username);

    ComboBox<String> section =
        new ComboBox<>(getTranslation(Constants.Resource.Strings.Login.SECTION));
    section.setDataProvider(new ListDataProvider<>(Section.list()));
    section.setValue(Section.PRIMARIO.getName());
    section.addClassName(Constants.ClassStyle.Login.FORM);
    login.add(section);

    Button log = new Button(getTranslation(Constants.Resource.Strings.Login.LOGIN));
    log.addClassName(Constants.ClassStyle.Login.FORM);
    log.addClickShortcut(Key.ENTER);
    log.addClickListener(
        event -> {
          if (username.isEmpty()) {
            Notification.show(getTranslation(Constants.Resource.Strings.Login.EMPTY_USERNAME));
          } else {
            if (getUI().isPresent()) {

              // Check user is created
              boolean exists = LoginServices.exists(username.getValue());
              if (exists) {

                // log in current user
                LoginServices.login(username.getValue(), section.getValue());

                // Go to user dashboard
                UI.getCurrent().navigate(Home.class);

              } else {
                Notification.show(
                    getTranslation(
                        Constants.Resource.Strings.Login.DOES_NOT_EXIST, username.getValue()));
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
