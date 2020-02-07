package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.model.Position;
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
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
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

  public Home() {
    H2 title =
        new H2(
            getTranslation(Constants.Resource.Strings.Home.WELCOME, LoginServices.getUserName()));
    add(title);
    add(buildPodiums());
  }

  private Component buildPodiums() {
    Div podiumLayout = new Div();
    podiumLayout.addClassName(Constants.ClassStyle.Home.PODIUMS);

    IAchievementAccess achievementAccess = new AchievementService();
    final Student student = LoginServices.getStudent();

    if (student != null) {
      List<Podium> podiums = new ArrayList<>();
      List<Exercise> exercises =
          Arrays.stream(ExerciseEnum.values()).map(ExerciseEnum::get).collect(Collectors.toList());
      exercises.forEach(
          exo -> {
            exo.getLevels()
                .forEach(
                    level -> {
                      Position position =
                          achievementAccess.getPodium(student, level.getDBLevel(), exo.getName());
                      LOGGER.debug(
                          "Exercise {}, Level {}, Position {}",
                          exo.getName(),
                          level.getLevel(),
                          position.toString());
                      if (position != Position.OUT) {
                        int score =
                            achievementAccess.getBestScore(
                                student, level.getDBLevel(), exo.getName());
                        podiums.add(new Podium(position, exo, level, score));
                      }
                    });
          });
      podiums.stream()
          .sorted(Comparator.comparingInt(podium -> podium.getPosition().toIncreasingInt()))
          .forEach(podium -> podiumLayout.add(renderPodium(podium)));
    }

    return podiumLayout;
  }

  private Component renderPodium(final Podium podium) {
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

    return layout;
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
