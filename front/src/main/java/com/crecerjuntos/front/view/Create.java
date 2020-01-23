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

@com.vaadin.flow.router.Route(Constants.Route.CREATE)
@StyleSheet(Constants.StyleSheet.CERCER_JUNTOS)
@PageTitle("Crecer Juntos Login")
public class Create extends VerticalLayout {

  public Create() {
    HorizontalLayout layout = new HorizontalLayout();
    layout.add(buildTeresa());
    layout.add(buildCreate());
    layout.addClassName(Constants.ClassStyle.Login.PANEL);
    add(layout);
  }

  private Component buildTeresa() {
    Image image = new Image(Constants.Resource.IMG_TERESA, "teresa");
    image.addClassName(Constants.ClassStyle.Login.TERESA);
    return image;
  }

  private Component buildCreate() {
    VerticalLayout create = new VerticalLayout();
    create.addClassName(Constants.ClassStyle.Login.LOGIN);

    H2 title = new H2(getTranslation(Constants.Resource.Strings.TITLE));
    create.add(title);

    TextField mail = new TextField(getTranslation(Constants.Resource.Strings.Login.MAIL));
    mail.addClassName(Constants.ClassStyle.Login.FORM);
    create.add(mail);

    TextField username = new TextField(getTranslation(Constants.Resource.Strings.Login.USERNAME));
    username.addClassName(Constants.ClassStyle.Login.FORM);
    create.add(username);

    ComboBox<String> section =
        new ComboBox<>(getTranslation(Constants.Resource.Strings.Login.SECTION));
    section.setDataProvider(new ListDataProvider<>(Section.list()));
    section.setValue(Section.PRIMARIO.getName());
    section.addClassName(Constants.ClassStyle.Login.FORM);
    create.add(section);

    Button log = new Button(getTranslation(Constants.Resource.Strings.Login.CREATE));
    log.addClassName(Constants.ClassStyle.Login.FORM);
    log.addClickShortcut(Key.ENTER);
    log.addClickListener(
        event -> {
          if (username.isEmpty()) {
            Notification.show(getTranslation(Constants.Resource.Strings.Login.EMPTY_USERNAME));
          } else {
            if (getUI().isPresent()) {

              boolean exists = LoginServices.exists(mail.getValue());
              if (exists) {
                Notification.show(
                    getTranslation(
                        Constants.Resource.Strings.Login.ALREADY_EXIST, mail.getValue()));
              } else {
                // create & log in current user
                LoginServices.create(mail.getValue(), username.getValue(), section.getValue());
                LoginServices.login(username.getValue(), section.getValue());
                // Go to user dashboard
                UI.getCurrent().navigate(Home.class);
              }
            } else {
              throw new RuntimeException("UI is not accessible");
            }
          }
        });
    create.add(log);

    return create;
  }
}
