package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercise.data.Score;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.ScoreServices;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Route.RESULT, layout = MainAppLayout.class)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle(Constants.Title.TITLE)
public class Result extends VerticalLayout {

  private Score score;

  public Result() {
    score = ScoreServices.get();
    if (score == null) withoutScore();
    else withScore();
  }

  private void withoutScore() {
    Div result = new Div();
    result.addClassName(Constants.ClassStyle.Result.RESULT);

    H2 noScore = new H2(getTranslation(Constants.Resource.Strings.Result.NO_SCORE));
    noScore.addClassName(Constants.ClassStyle.Result.NO_SCORE);
    result.add(noScore);

    Button exercises = new Button(getTranslation(Constants.Resource.Strings.Result.EXERCISES));
    exercises.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    exercises.addClassName(Constants.ClassStyle.Result.EXERCISES);
    exercises.addClickListener(
        event -> {
          UI.getCurrent().navigate(Exercises.class);
        });
    result.add(exercises);

    add(result);
  }

  private void withScore() {}
}
