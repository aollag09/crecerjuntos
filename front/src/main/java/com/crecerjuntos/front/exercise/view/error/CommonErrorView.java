package com.crecerjuntos.front.exercise.view.error;

import com.crecerjuntos.front.exercise.view.ExerciseLayout;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Route.ERROR_VIEW, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class CommonErrorView extends AbstractErrorView {

  public CommonErrorView() {
    add(new H2(getTranslation(Constants.Resource.Strings.Errors.ERROR)));
    add(buildStartExercises());
  }
}
