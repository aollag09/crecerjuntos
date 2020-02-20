package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.model.Position;
import com.crecerjuntos.model.Score;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.services.AchievementService;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@com.vaadin.flow.router.Route(value = Constants.Route.HOME, layout = MainAppLayout.class)
@PageTitle(Constants.Title.TITLE)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
public class Home extends VerticalLayout {

  private static final Logger LOGGER = LoggerFactory.getLogger(Home.class);
  private static final IAchievementAccess achievementAccess = new AchievementService();

  public Home() {
    H2 title =
        new H2(
            getTranslation(Constants.Resource.Strings.Home.WELCOME, LoginServices.getUserName()));
    add(title);
    final Student student = LoginServices.getStudent();
    if (student != null) {
      add(buildSummary(student));
      add(buildPodiums(student, false));
      add(buildPodiums(student, true));
    }
  }

  private Component buildSummary(final Student student) {
    VerticalLayout layout = new VerticalLayout();
    layout.add(new H3(getTranslation(Constants.Resource.Strings.Home.SUMMARY_TITLE)));

    Div numbers = new Div();
    numbers.addClassName(Constants.ClassStyle.Home.NUMBERS);

    numbers.add(
        renderSummary(
            student, Score.GOOD_SCORE, Score.MAX_SCORE, Constants.ClassStyle.Home.NUMBER_GREEN));
    numbers.add(
        renderSummary(
            student,
            Score.MINIMUM_SCORE,
            Score.GOOD_SCORE - 1,
            Constants.ClassStyle.Home.NUMBER_ORANGE));
    numbers.add(
        renderSummary(
            student,
            Score.MIN_SCORE,
            Score.MINIMUM_SCORE - 1,
            Constants.ClassStyle.Home.NUMBER_RED));
    layout.add(numbers);

    return layout;
  }

  private Component renderSummary(
      final Student student, final int min, final int max, final String style) {
    VerticalLayout layout = new VerticalLayout();
    layout.addClassName(Constants.ClassStyle.Home.NUMBER);
    layout.addClassName(style);
    layout.setWidth("120px");

    int nb = achievementAccess.get(student, min, max).size();
    Span number = new Span(String.valueOf(nb));
    number.addClassName(Constants.ClassStyle.Home.SPAN_NUMBER);
    layout.add(number);

    return layout;
  }

  private Component buildPodiums(final Student student, final boolean ofSection) {
    VerticalLayout layout = new VerticalLayout();

    Div podiumLayout = new Div();
    podiumLayout.addClassName(Constants.ClassStyle.Home.PODIUMS);

    if (student != null) {
      List<Podium> podiums = new ArrayList<>();
      List<Exercise> exercises =
          Arrays.stream(ExerciseEnum.values()).map(ExerciseEnum::get).collect(Collectors.toList());
      exercises.forEach(
          exo -> {
            exo.getLevels()
                .forEach(
                    level -> {
                      Position position = Position.OUT;
                      if (ofSection)
                        position =
                            achievementAccess.getSectionPodium(
                                student, level.getDBLevel(), exo.getName());
                      else
                        position =
                            achievementAccess.getPodium(student, level.getDBLevel(), exo.getName());
                      if (position != Position.OUT) {
                        int score =
                            achievementAccess.getBestScore(
                                student, level.getDBLevel(), exo.getName());
                        podiums.add(new Podium(position, exo, level, score));
                      }
                    });
          });

      if (podiums.size() > 0)
        if (ofSection)
          layout.add(new H3(getTranslation(Constants.Resource.Strings.Home.SECTION_PODIUM_TITLE)));
        else layout.add(new H3(getTranslation(Constants.Resource.Strings.Home.PODIUM_TITLE)));

      podiums.stream()
          .sorted(Comparator.comparingInt(podium -> podium.getPosition().toIncreasingInt()))
          .forEach(podium -> podiumLayout.add(renderPodium(podium, ofSection)));

      layout.add(podiumLayout);
    }

    return layout;
  }

  private Component renderPodium(final Podium podium, boolean ofSection) {
    VerticalLayout layout = new VerticalLayout();
    layout.addClassName(Constants.ClassStyle.Home.PODIUM);
    layout.setWidth("320px");

    Image badge = new Image();
    badge.addClassName(Constants.ClassStyle.Home.BADGE);

    switch (podium.getPosition()) {
      case OUT:
        break;
      case FIRST:
        badge.setSrc(Constants.Resource.Images.Badges.GOLD_MEDAL);
        break;
      case SECOND:
        badge.setSrc(Constants.Resource.Images.Badges.SILVER_MEDAL);
        break;
      case THIRD:
        badge.setSrc(Constants.Resource.Images.Badges.BRONZE_MEDAL);
        break;
    }
    layout.add(badge);

    buildSpans(podium, layout);

    return layout;
  }

  private void buildSpans(final Podium podium, final VerticalLayout layout) {
    Span score = new Span("Score " + podium.getScore());
    score.addClassName(Constants.ClassStyle.Exercises.GREEN);
    score.addClassName(Constants.ClassStyle.Home.SCORE);
    layout.add(score);

    Span exercise = new Span(getTranslation(podium.getExercise().getTitle()));
    exercise.addClassName(Constants.ClassStyle.Home.EXERCISE);
    layout.add(exercise);

    Span level = new Span(getTranslation(podium.getLevel().getName()));
    level.addClassName(Constants.ClassStyle.Home.LEVEL);
    layout.add(level);
  }

  private static class Podium {

    private final Position position;
    private final Exercise exercise;
    private final Level level;
    private final int score;

    public Position getPosition() {
      return position;
    }

    public Exercise getExercise() {
      return exercise;
    }

    public Level getLevel() {
      return level;
    }

    public int getScore() {
      return score;
    }

    public Podium(Position position, Exercise exercise, Level level, int score) {
      this.position = position;
      this.exercise = exercise;
      this.level = level;
      this.score = score;
    }
  }
}
