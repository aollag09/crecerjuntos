package com.crecerjuntos.front.exercise;

import com.crecerjuntos.front.exercise.data.CSFirst;
import com.crecerjuntos.front.exercise.data.Dactylographie;
import com.crecerjuntos.front.exercise.data.Word;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@SuppressWarnings("ImmutableEnumChecker")
public enum ExerciseEnum {
  DACTYLOGRAPHIE(new Dactylographie()),
  WORD(new Word()),
  CS_FIRST(new CSFirst());
  /*EXCEL(new Excel()),
  POWER_POINT(new PowerPoint()),
  GOOGLE_SEARCH(new GoogleSearch());*/

  private final Exercise exercise;

  ExerciseEnum(final Exercise exercise) {
    this.exercise = exercise;
  }

  public final Exercise get() {
    return exercise;
  }

  public static List<Exercise> list() {
    List<ExerciseEnum> list = Arrays.asList(ExerciseEnum.values());
    return list.stream().map(ExerciseEnum::get).collect(Collectors.toList());
  }
}
