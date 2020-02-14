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
        buildLevels(),
        Difficulty.Advanced,
        5,
        Constants.Route.CS_FIRST);
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, Constants.Resource.Strings.CSFirst.LVL1_NAME));
    levels.add(new Level(2, Constants.Resource.Strings.CSFirst.LVL2_NAME));
    levels.add(new Level(3, Constants.Resource.Strings.CSFirst.LVL3_NAME));
    return levels;
  }

  @Override
  public long getExpectedTime(int level) throws NonExistingLevel {
    return 0;
  }

  public String getLink(final int level) throws NonExistingLevel {
    if (level == 0) return "https://scratch.mit.edu/projects/340739176/editor";
    if (level == 1) return "https://scratch.mit.edu/projects/367559553/editor";
    if (level == 2) return "https://scratch.mit.edu/projects/368215391/editor/";
    else throw new NonExistingLevel(name, level);
  }

  public String getInstructionLink(int level) throws NonExistingLevel {
    if (level == 0)
      return "https://docs.google.com/presentation/d/1hYwKbinjNR9wDDPhv6zzfyZihTXqfVPgbpZD1ywPE1U/edit?usp=sharing";
    if (level == 1)
      return "https://docs.google.com/presentation/d/1QnIA5wQXVDSboyBZ8A3gHGnJdfhWMJGP5h3NrimJ74o/edit?usp=sharing";
    if (level == 2)
      // FIXME update the power point link when it's done !
      return "https://docs.google.com/presentation/d/1QnIA5wQXVDSboyBZ8A3gHGnJdfhWMJGP5h3NrimJ74o/edit?usp=sharing";
    else throw new NonExistingLevel(name, level);
  }

  public String getCSFirstExercise(int level) throws NonExistingLevel {
    if (level == 0) return Constants.Resource.Strings.CSFirst.LVL1_NAME;
    if (level == 1) return Constants.Resource.Strings.CSFirst.LVL2_NAME;
    if (level == 2) return Constants.Resource.Strings.CSFirst.LVL3_NAME;
    else throw new NonExistingLevel(name, level);
  }

  public String getCSFirstCourseId() {
    return "jjcp6d";
  }
}
