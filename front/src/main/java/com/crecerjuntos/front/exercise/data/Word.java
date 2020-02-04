package com.crecerjuntos.front.exercise.data;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.ClassLoaderUtil;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Word extends Exercise {

  public Word() {
    super(
        Constants.Exercises.WORD_NAME,
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
    /*levels.add(new Level(3, Constants.Resource.Strings.Word.LVL3_NAME));
    levels.add(new Level(4, Constants.Resource.Strings.Word.LVL4_NAME));*/
    return levels;
  }

  public ByteArrayInputStream getTemplate(final int level) throws NonExistingLevel, IOException {
    URL resource = ClassLoaderUtil.getResource(getTemplateURL(level), this.getClass());
    if (resource == null) {
      throw new IllegalArgumentException(
          "Template is not found with URL : " + getTemplateURL(level));
    } else {
      File file = new File(resource.getFile());
      return new ByteArrayInputStream(Files.readAllBytes(file.toPath()));
    }
  }

  private String getTemplateURL(final int level) throws NonExistingLevel {
    if (level == 0) return Constants.Resource.Templates.Word.LEVEL1;
    if (level == 1) return Constants.Resource.Templates.Word.LEVEL2;
    throw new NonExistingLevel(this.name, level);
  }

  public List<Step> getSteps(final int level) throws NonExistingLevel {
    if (level == 0) {
      return Arrays.asList(
          new Step(Constants.Resource.Strings.Word.STEP_1_1, 20),
          new Step(Constants.Resource.Strings.Word.STEP_1_2, 20),
          new Step(Constants.Resource.Strings.Word.STEP_1_3, 20),
          new Step(Constants.Resource.Strings.Word.STEP_1_4, 20),
          new Step(Constants.Resource.Strings.Word.STEP_1_5, 20));
    } else throw new NonExistingLevel(this.name, level);
  }

  @Override
  public long getExpectedTime(int level) {
    return 0;
  }

  public class Step {
    private String title;
    private int score;

    public Step(String title, int score) {
      this.title = title;
      this.score = score;
    }

    public String getTitle() {
      return title;
    }

    public int getScore() {
      return score;
    }
  }
}
