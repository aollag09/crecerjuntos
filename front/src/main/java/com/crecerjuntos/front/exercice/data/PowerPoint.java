package com.crecerjuntos.front.exercice.data;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.List;

public class PowerPoint extends Exercise {

  public PowerPoint() {
    super(
        Constants.Resource.Strings.PowerPoint.TITLE,
        Constants.Resource.Strings.PowerPoint.INSTRUCTIONS,
        buildLevels(),
        Difficulty.Easy,
        2,
        Constants.Route.POWER_POINT);
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, Constants.Resource.Strings.PowerPoint.LVL1_NAME));
    return levels;
  }
}
