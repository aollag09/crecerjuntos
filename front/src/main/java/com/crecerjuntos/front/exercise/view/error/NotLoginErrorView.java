package com.crecerjuntos.front.exercise.view.error;

import com.crecerjuntos.front.exercise.view.ExerciseLayout;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Route.NOT_LOGIN_ERROR_VIEW, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class NotLoginErrorView extends AbstractErrorView {

  public NotLoginErrorView() {
    add(new H2(getTranslation(Constants.Resource.Strings.Errors.NOT_LOGIN_ERROR)));
    add(buildLogin());
  }
}
