package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.view.Exercises;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Route.NON_EXISTING_LEVEL, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class NonExistingLevelView extends VerticalLayout {

  public NonExistingLevelView() {
    add(new H3(getTranslation(Constants.Resource.Strings.Exercises.NON_EXISTING_LEVEL)));
    add(buildStartExercises());
  }

  private Component buildStartExercises() {
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
