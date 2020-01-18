package com.crecerjuntos.front.exercice;

import com.crecerjuntos.front.exercice.data.Dactylographie;
import com.crecerjuntos.front.exercice.data.GoalKeeper;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public enum ExerciseEnum {
  DACTYLOGRAPHIE(new Dactylographie()),
  GOALKEEPER(new GoalKeeper());

  private Exercise exercise;

  ExerciseEnum(Exercise exercise) {
    this.exercise = exercise;
  }

  public Exercise get() {
    return exercise;
  }

  public static List<Exercise> list() {
    List<ExerciseEnum> list = Arrays.asList(ExerciseEnum.values());
    return list.stream().map(ExerciseEnum::get).collect(Collectors.toList());
  }
}
