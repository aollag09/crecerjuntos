package com.crecerjuntos.front.exercice.data;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.Level;

import java.util.ArrayList;
import java.util.List;

public class Dactylographie extends Exercise {

  public Dactylographie() {
    super("Dactylographie", buildLevels());
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    return levels;
  }

}
