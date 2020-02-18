package com.crecerjuntos.front.view;

import com.crecerjuntos.front.exercise.view.error.DatabaseErrorView;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DatabaseException;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.EmailField;
import com.vaadin.flow.component.textfield.PasswordField;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.provider.ListDataProvider;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(Constants.Route.CREATE)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle(Constants.Title.TITLE)
public class Create extends VerticalLayout {

  public Create() {
    HorizontalLayout layout = new HorizontalLayout();
    layout.add(buildTeresa());
    layout.add(buildCreate());
    layout.addClassName(Constants.ClassStyle.Login.PANEL);
    add(layout);
  }

  private Component buildTeresa() {
    Image image = new Image(Constants.Resource.Images.IMG_TERESA, "teresa");
    image.addClassName(Constants.ClassStyle.Login.TERESA);
    return image;
  }

  private Component buildCreate() {
    VerticalLayout create = new VerticalLayout();
    create.addClassName(Constants.ClassStyle.Login.LOGIN);

    H2 title = new H2(getTranslation(Constants.Resource.Strings.TITLE));
    create.add(title);

    EmailField mail = new EmailField(getTranslation(Constants.Resource.Strings.Login.MAIL));
    mail.addClassName(Constants.ClassStyle.Login.FORM);
    mail.setClearButtonVisible(true);
    mail.setErrorMessage(getTranslation(Constants.Resource.Strings.Login.WRONG_MAIL));
    create.add(mail);

    PasswordField password =
        new PasswordField(getTranslation(Constants.Resource.Strings.Login.PASSWORD));
    password.addClassName(Constants.ClassStyle.Login.FORM);
    create.add(password);

    PasswordField confirm =
        new PasswordField(getTranslation(Constants.Resource.Strings.Login.CONFIRM_PASSWORD));
    confirm.addClassName(Constants.ClassStyle.Login.FORM);
    create.add(confirm);
    confirm.addValueChangeListener(
        event -> {
          if (confirm.getValue().equals(password.getValue())) {
            confirm.setInvalid(false);
          } else {
            confirm.setInvalid(true);
            Notification.show(getTranslation(Constants.Resource.Strings.Login.NOT_SAME_PASSWORDS));
          }
        });

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
    log.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
    log.addClassName(Constants.ClassStyle.Login.FORM);
    log.addClickShortcut(Key.ENTER);
    log.addClickListener(
        event -> {
          if (username.isEmpty()) {
            Notification.show(getTranslation(Constants.Resource.Strings.Login.EMPTY_USERNAME));
          } else {
            if (getUI().isPresent()) {

              boolean error = false;
              boolean exists = LoginServices.exists(mail.getValue());
              if (exists) {
                error = true;
                Notification.show(
                    getTranslation(
                        Constants.Resource.Strings.Login.ALREADY_EXIST, mail.getValue()));
              }
              if(mail.getValue() == null || mail.getValue().isEmpty()){
                error = true;
                Notification.show(getTranslation(Constants.Resource.Strings.Login.EMPTY_MAIL));
              }
              if(mail.isInvalid()){
                error = true;
                Notification.show(getTranslation(Constants.Resource.Strings.Login.WRONG_MAIL));
              }
              if(password.getValue() == null || password.getValue().isEmpty()){
                error = true;
                Notification.show(getTranslation(Constants.Resource.Strings.Login.EMPTY_PASSWORD));
              }
              
              if( ! error ){
              // create & log in current user
                Student student = null;
                try {
                  student =
                      LoginServices.create(
                          mail.getValue(),
                          username.getValue(),
                          password.getValue(),
                          section.getValue());
                } catch (DatabaseException e) {
                  UI.getCurrent().navigate(DatabaseErrorView.class);
                }
                LoginServices.login(student);
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
