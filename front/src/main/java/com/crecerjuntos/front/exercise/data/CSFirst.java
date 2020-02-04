package com.crecerjuntos.front.exercise.data;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.List;

public class CSFirst extends Exercise {

  public CSFirst() {
    super(
        Constants.Exercises.CS_FIRST_NAME,
        Constants.Resource.Strings.CSFirst.TITLE,
        Constants.Resource.Strings.CSFirst.INSTRUCTIONS,
        buidLevels(),
        Difficulty.Advanced,
        5,
        Constants.Route.CS_FIRST);
  }

  private static List<Level> buidLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, Constants.Resource.Strings.CSFirst.LVL1_NAME));
    return levels;
  }

  @Override
  public long getExpectedTime(int level) throws NonExistingLevel {
    return 0;
  }
}
