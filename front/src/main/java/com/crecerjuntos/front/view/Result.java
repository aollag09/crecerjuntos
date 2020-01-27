package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercise.data.Score;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.ScoreServices;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.H1;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

import java.util.Map;

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

    result.add(buildStartExercises());

    add(result);
  }

  private void withScore() {
    Div result = new Div();
    result.addClassName(Constants.ClassStyle.Result.RESULT);

    // Add score
    H1 scoreTitle =
        new H1(getTranslation(Constants.Resource.Strings.Result.SCORE) + score.getScore());
    scoreTitle.addClassName(Constants.ClassStyle.Result.SCORE);
    result.add(scoreTitle);

    // Add title
    H2 title = null;
    if (score.getScore() >= Constants.Exercises.GOOD_SCORE) {
      title = new H2(getTranslation(Constants.Resource.Strings.Result.SUCCEEDED));
      scoreTitle.addClassName(Constants.ClassStyle.Result.SUCCEEDED);
    } else if (score.getScore() >= Constants.Exercises.MINIMUM_SCORE) {
      title = new H2(getTranslation(Constants.Resource.Strings.Result.TO_IMPROVE));
      scoreTitle.addClassName(Constants.ClassStyle.Result.TO_IMPROVED);
    } else {
      title = new H2(getTranslation(Constants.Resource.Strings.Result.FAILED));
      scoreTitle.addClassName(Constants.ClassStyle.Result.FAILED);
    }
    title.addClassName(Constants.ClassStyle.Result.TITLE);

    result.add(title);

    // Add KPIs
    Map<String, Object> kpis = score.getKPIs();
    kpis.keySet()
        .forEach(
            kpi -> {
              Div kpiDiv = new Div();
              kpiDiv.addClassName(Constants.ClassStyle.Result.KPI);
              Text kpiTxt =
                  new Text(getTranslation(kpi.toString()) + " : " + kpis.get(kpi).toString());
              kpiDiv.add(kpiTxt);
              result.add(kpiDiv);
            });

    // Add start new Exercise button
    result.add(buildStartExercises());

    add(result);
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
