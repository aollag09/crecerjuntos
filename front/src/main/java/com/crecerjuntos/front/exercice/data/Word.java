package com.crecerjuntos.front.exercice.data;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.List;

public class Word extends Exercise {

  public Word() {
    super(
        Constants.Resource.Strings.Word.TITLE,
        Constants.Resource.Strings.Word.INSTRUCTIONS,
        buildLevels(),
        Difficulty.Easy,
        2,
        Constants.Route.WORD);
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, Constants.Resource.Strings.Word.LVL1_NAME));
    levels.add(new Level(2, Constants.Resource.Strings.Word.LVL2_NAME));
    levels.add(new Level(3, Constants.Resource.Strings.Word.LVL3_NAME));
    levels.add(new Level(4, Constants.Resource.Strings.Word.LVL4_NAME));
    return levels;
  }
}
