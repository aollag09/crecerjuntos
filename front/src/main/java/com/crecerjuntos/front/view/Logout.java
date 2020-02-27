package com.crecerjuntos.front.view;

import com.crecerjuntos.front.exercise.view.error.DatabaseErrorView;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.model.exception.DatabaseException;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Route;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Route(Constants.Route.LOGOUT)
public class Logout extends VerticalLayout {

  public static final Logger LOGGER = LoggerFactory.getLogger(Login.class);

  public Logout() {
    try {
      LoginServices.logout();
    } catch (DatabaseException e) {
      UI.getCurrent().navigate(DatabaseErrorView.class);
    }
    buildLogout();
  }

  private void buildLogout() {
    H2 title = new H2(getTranslation(Constants.Resource.Strings.Logout.TITLE));
    add(title);

    VerticalLayout logoutDiv = new VerticalLayout();
    logoutDiv.addClassName(Constants.ClassStyle.Logout.LOGOUT);
    H2 text = new H2(getTranslation(Constants.Resource.Strings.Logout.SUCCESSFULLY_LOGOUT));
    logoutDiv.add(text);

    Button login = new Button(getTranslation(Constants.Resource.Strings.Logout.LOGIN));
    login.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    login.addClassName(Constants.ClassStyle.Exercises.START);
    login.addClickShortcut(Key.ENTER);
    login.addClickListener(
        event -> {
          UI.getCurrent().navigate(Login.class);
        });
    logoutDiv.add(login);
    add(logoutDiv);
  }
}
