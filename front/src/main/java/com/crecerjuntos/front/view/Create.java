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

    H2 title = new H2("Crecer Juntos");
    create.add(title);

    Text text = new Text("Please enter the following information");
    create.add(text);

    TextField username = new TextField("Username");
    username.addClassName(Constants.ClassStyle.Login.FORM);
    create.add(username);

    TextField mail = new TextField("Mail");
    mail.addClassName(Constants.ClassStyle.Login.FORM);
    create.add(mail);

    ComboBox<String> section = new ComboBox<>("Section Name");
    section.setDataProvider(new ListDataProvider<>(Section.list()));
    section.setValue(Section.PRIMARIO.getName());
    section.addClassName(Constants.ClassStyle.Login.FORM);
    create.add(section);

    Button log = new Button("Create Account");
    log.addClassName(Constants.ClassStyle.Login.FORM);
    log.addClickListener(
        event -> {
          if (username.isEmpty()) {
            Notification.show("The username should not be empty");
          } else {
            if (getUI().isPresent()) {

              // create & log in current user
              LoginServices.create(username.getValue(), section.getValue());
              LoginServices.login(username.getValue(), section.getValue());
              // Go to user dashboard
              UI.getCurrent().navigate(Home.class);

            } else {
              throw new RuntimeException("UI is not accessible");
            }
          }
        });
    create.add(log);

    return create;
  }
}
