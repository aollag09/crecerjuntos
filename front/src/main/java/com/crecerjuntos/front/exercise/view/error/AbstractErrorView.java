package com.crecerjuntos.front.exercise.view.error;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.view.Exercises;
import com.crecerjuntos.front.view.Login;
import com.crecerjuntos.front.view.Logout;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;

public class AbstractErrorView extends VerticalLayout {

  protected Component buildStartExercises() {
    Button exercises =
        new Button(
            getTranslation(Constants.Resource.Strings.Result.EXERCISES),
            new Icon(VaadinIcon.PENCIL));
    exercises.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    exercises.addClassName(Constants.ClassStyle.Result.EXERCISES);
    exercises.addClickShortcut(Key.ENTER);
    exercises.addClickListener(
        event -> {
          UI.getCurrent().navigate(Exercises.class);
        });
    return exercises;
  }

  protected Component buildLogin() {
    Button login =
        new Button(
            getTranslation(Constants.Resource.Strings.Logout.LOGIN), new Icon(VaadinIcon.ENTER));
    login.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    login.addClassName(Constants.ClassStyle.Exercises.START);
    login.addClickShortcut(Key.ENTER);
    login.addClickListener(
        event -> {
          UI.getCurrent().navigate(Login.class);
        });
    return login;
  }

  protected Component buildLogout() {
    Button login =
        new Button(
            getTranslation(Constants.Resource.Strings.Logout.LOGOUT), new Icon(VaadinIcon.EXIT));
    login.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    login.addClassName(Constants.ClassStyle.Exercises.START);
    login.addClickShortcut(Key.ENTER);
    login.addClickListener(
        event -> {
          UI.getCurrent().navigate(Logout.class);
        });
    return login;
  }
}
