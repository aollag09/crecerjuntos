package com.crecerjuntos.front.admin;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.Constants;
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
              new Pair<>(new H3(exercise.getName()), new Span());
          maxLevelReached.add(maxLevelReachedSpan);

          Grid<LevelStat> exercisesScores = new Grid<>();
          exercisesScores.addColumn(LevelStat::getLevel).setHeader("Level");
          exercisesScores.addColumn(LevelStat::getScore).setHeader("Score");
          exercisesScores.setDetailsVisibleOnClick(true);
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
        buildScoreGrid(i, s, exerciseList.get(i));
      }
    }
    setVisible(true);
  }

  public String getMaxLevelReached(Student s, Exercise exercise) {
    Integer level = achievementAccess.getMaxLevel(s, exercise.getName());
    if (level != null) {
      return "Max level reached : " + level + 1;
    } else {
      return "No level done";
    }
  }

  public void buildScoreGrid(int index, Student student, Exercise exercise) {

    Grid<LevelStat> exerciseGrid = scores.get(index);

    List<Level> levels = exercise.getLevels();
    List<LevelStat> scoresMap =
        levels.stream()
            .map(
                level ->
                    new LevelStat(
                        getTranslation(level.getName()),
                        achievementAccess.getBestScore(
                            student, level.getDBLevel(), exercise.getName())))
            .collect(Collectors.toList());

     exerciseGrid.setItems(scoresMap);
     exerciseGrid.getColumns().forEach(column -> column.setAutoWidth(true));
     exerciseGrid.recalculateColumnWidths();
     exerciseGrid.setHeightByRows(true);
  }

  private static class LevelStat {

      private String level;
      private String score;

    public LevelStat(String level, Integer score) {
      this.level = level;
      if (score != null)
        this.score = score.toString();
      else
        this.score = "No score";
    }

      public String getLevel() {
          return level;
      }


      public String getScore() { return score; }
  }
}
