package com.crecerjuntos.front.exercice.data;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.Level;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.List;

public class Dactylographie extends Exercise {

  public Dactylographie() {
    super("Dactylographie", buildLevels(), Difficulty.Easy, 2);
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, "Level 1 : Dactylographie Simple Characters"));
    levels.add(new Level(2, "Level 2 : Dactylographie Numbers Characters"));
    levels.add(new Level(3, "Level 3 : Dactylographie Words"));
    return levels;
  }
}
