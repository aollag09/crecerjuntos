package com.crecerjuntos.front.exercise.data;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.Collections;
import java.util.List;

public class IA extends Exercise {

  public IA() {
    super(
        Constants.Exercises.IA_NAME,
        Constants.Resource.Strings.IA.TITLE,
        Constants.Resource.Strings.IA.INSTRUCTIONS,
        buildLevels(),
        Difficulty.Advanced,
        2,
        Constants.Route.IA);
  }

  private static List<Level> buildLevels() {
    return Collections.singletonList(new Level(1, Constants.Resource.Strings.IA.LVL1_NAME));
  }

  @Override
  public long getExpectedTime(int level) throws NonExistingLevel {
    return 0;
  }

  public String getLink(final int level) throws NonExistingLevel {
    if (level == 0)
      return "https://colab.research.google.com/drive/1xYLhBztpuUKvv9VyG9RVlHKBN84Trl5a";
    else throw new NonExistingLevel(name, level);
  }
}
