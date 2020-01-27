package com.crecerjuntos.front.exercise.data;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.List;

public class GoogleSearch extends Exercise {

  public GoogleSearch() {
    super(
        Constants.Exercises.GOOGLE_SEARCH_NAME,
        Constants.Resource.Strings.GoogleSearch.TITLE,
        Constants.Resource.Strings.GoogleSearch.INSTRUCTIONS,
        buildLevels(),
        Difficulty.Medium,
        1,
        Constants.Route.GOOGLE_SEARCH);
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    return levels;
  }

  @Override
  public long getExpectedTime(int level) {
    return 0;
  }
}
