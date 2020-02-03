package com.crecerjuntos.front.exercise.view.error;

import com.crecerjuntos.front.exercise.view.ExerciseLayout;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Route(value = Constants.Route.ERROR_VIEW, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class CommonErrorView extends AbstractErrorView {

  public CommonErrorView() {
    add(new H2(getTranslation(Constants.Resource.Strings.Exercises.ERROR)));
    add(buildStartExercises());
  }
}
