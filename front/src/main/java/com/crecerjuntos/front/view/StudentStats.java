package com.crecerjuntos.front.view;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import org.javatuples.Pair;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class StudentStats extends VerticalLayout {

  private final IAchievementAccess achievementAccess;

  private List<Pair<H3, Span>> maxLevelReached;
  private List<Grid<LevelStat>> scores;
  private List<Exercise> exerciseList;

  public StudentStats(IAchievementAccess achievementAccess) {
    this.achievementAccess = achievementAccess;

    maxLevelReached = new ArrayList<>();
    scores = new ArrayList<>();

    exerciseList = ExerciseEnum.list();
    exerciseList.forEach(
        exercise -> {
          Pair<H3, Span> maxLevelReachedSpan =
              new Pair<>(new H3(exercise.getName() + " max level achieved"), new Span());
          maxLevelReached.add(maxLevelReachedSpan);

          Grid<LevelStat> exercisesScores = new Grid<>();
          scores.add(exercisesScores);
        });

    for (int i = 0; i < exerciseList.size(); i++) {
      add(maxLevelReached.get(i).getValue0());
      add(maxLevelReached.get(i).getValue1());
      add(scores.get(i));
    }

    setVisible(false);
  }

  public void show(Student s) {
    if (s != null) {
      for (int i = 0; i < exerciseList.size(); i++) {
        maxLevelReached.get(i).getValue1().setText(getMaxLevelReached(s, exerciseList.get(i)));
        scores.set(i, buildScoreGrid(s, exerciseList.get(i)));
      }
    }
    setVisible(true);
  }

  public String getMaxLevelReached(Student s, Exercise exercise) {
    Integer level = achievementAccess.getMaxLevel(s, exercise.getName());
    if (level != null) {
      return "Level " + level;
    } else {
      return "No level done";
    }
  }

  public Grid<LevelStat> buildScoreGrid(Student student, Exercise exercise) {

    List<Level> levels = exercise.getLevels();
    List<LevelStat> scoresMap =
        levels.stream()
            .map(
                level ->
                    new LevelStat(
                        level.getName(),
                        achievementAccess.getBestScore(
                            student, level.getLevel(), exercise.getName())))
            .collect(Collectors.toList());

      Grid<LevelStat> grid = new Grid<>();
      grid.addColumn(LevelStat::getLevel).setHeader("Level");
      grid.addColumn(LevelStat::getScore).setHeader("Score");

      grid.setItems(scoresMap);

      return grid;
  }

  private static class LevelStat {

      private String level;
      private int score;

    public LevelStat(String level, int score) {
      this.level = level;
      this.score = score;
    }

      public String getLevel() {
          return level;
      }


      public int getScore() {
          return score;
      }
  }
}
