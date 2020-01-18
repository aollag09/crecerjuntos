package com.crecerjuntos.front.exercice;

import com.crecerjuntos.front.exercice.data.Dactylographie;
import com.crecerjuntos.front.exercice.data.GoalKeeper;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public enum ExerciceEnum {
  DACTYLOGRAPHIE(new Dactylographie()),
  GOALKEEPER(new GoalKeeper());

  private Exercice exercice;

  ExerciceEnum(Exercice exercice) {}

  public Exercice get() {
    return exercice;
  }

  public static List<Exercice> list() {
    List<ExerciceEnum> list = Arrays.asList(ExerciceEnum.values());
    return list.stream().map(ee -> ee.get()).collect(Collectors.toList());
  }
}
