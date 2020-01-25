package com.crecerjuntos.front.exercice.data;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.List;

public class GoogleSearch extends Exercise {

  public GoogleSearch() {
    super(
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
}
