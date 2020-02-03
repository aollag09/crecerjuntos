package com.crecerjuntos.front.exercise.view.error;

import com.crecerjuntos.front.exercise.view.ExerciseLayout;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Route.NON_EXISTING_LEVEL, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class NonExistingLevelView extends AbstractErrorView {

  public NonExistingLevelView() {
    add(new H3(getTranslation(Constants.Resource.Strings.Exercises.NON_EXISTING_LEVEL)));
    add(buildStartExercises());
  }


}
