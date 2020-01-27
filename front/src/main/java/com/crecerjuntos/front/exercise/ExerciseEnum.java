package com.crecerjuntos.front.exercise;

import com.crecerjuntos.front.exercise.data.*;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public enum ExerciseEnum {
  DACTYLOGRAPHIE(new Dactylographie()),
  WORD(new Word()),
  EXCEL(new Excel()),
  POWER_POINT(new PowerPoint()),
  GOOGLE_SEARCH(new GoogleSearch());

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
