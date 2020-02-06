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
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@com.vaadin.flow.router.Route(value = Constants.Route.HOME, layout = MainAppLayout.class)
@PageTitle(Constants.Title.TITLE)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
public class Home extends VerticalLayout {

  private static final Logger LOGGER = LoggerFactory.getLogger(Home.class);

  public Home() {
    add(buildPodiums());
  }

  private Component buildPodiums() {
    VerticalLayout podiumLayout = new VerticalLayout();
    podiumLayout.add(new H2(getTranslation(Constants.Resource.Strings.Home.PODIUM)));

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
      podiums.forEach(podium -> podiumLayout.add(renderPodium(podium)));
    }

    return podiumLayout;
  }

  private Component renderPodium(final Podium podium) {
    HorizontalLayout layout = new HorizontalLayout();
    layout.addClassName(Constants.ClassStyle.Home.PODIUM);

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

    H3 score = new H3("Score " + podium.getScore());
    score.addClassName(Constants.ClassStyle.Exercises.GREEN);
    layout.add(score);

    layout.add(
        new H3(
            getTranslation(podium.getExercise().getTitle())
                + " "
                + getTranslation(podium.getLevel().getName())));

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
