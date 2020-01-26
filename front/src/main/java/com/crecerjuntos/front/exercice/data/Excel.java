package com.crecerjuntos.front.exercice.data;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.List;

public class Excel extends Exercise {

  public Excel() {
    super(
        Constants.Exercises.EXCEL_NAME,
        Constants.Resource.Strings.Excel.TITLE,
        Constants.Resource.Strings.Excel.INSTRUCTIONS,
        buildLevels(),
        Difficulty.Easy,
        2,
        Constants.Route.EXCEL);
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, Constants.Resource.Strings.Excel.LVL1_NAME));
    return levels;
  }
}
