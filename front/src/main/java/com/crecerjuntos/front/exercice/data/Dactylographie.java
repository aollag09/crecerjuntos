package com.crecerjuntos.front.exercice.data;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.List;

public class Dactylographie extends Exercise {

  public Dactylographie() {
    super(Constants.Resource.Strings.Dactylographie.TITLE, buildLevels(), Difficulty.Easy, 2, Constants.Route.DACTYLOGRAPHIE);
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, Constants.Resource.Strings.Dactylographie.LVL1_NAME));
    levels.add(new Level(2, Constants.Resource.Strings.Dactylographie.LVL2_NAME));
    levels.add(new Level(3, Constants.Resource.Strings.Dactylographie.LVL3_NAME));
    return levels;
  }
}
