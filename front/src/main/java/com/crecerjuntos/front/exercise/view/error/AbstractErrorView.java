package com.crecerjuntos.front.exercise.view.error;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.view.Exercises;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;

public class AbstractErrorView extends VerticalLayout {

  protected Component buildStartExercises() {
    Button exercises = new Button(getTranslation(Constants.Resource.Strings.Result.EXERCISES));
    exercises.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    exercises.addClassName(Constants.ClassStyle.Result.EXERCISES);
    exercises.addClickShortcut(Key.ENTER);
    exercises.addClickListener(
        event -> {
          UI.getCurrent().navigate(Exercises.class);
        });
    return exercises;
  }
}