package com.crecerjuntos.front.exercise;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.util.Difficulty;

import java.util.List;

public abstract class Exercise {

  /** Name of the exercise, unique name for the database */
  protected final String name;

  /** Title public translated name of the exercise */
  protected final String title;

  /** Instructions of the exercise */
  protected final String instructions;

  /** URI of the exercise */
  protected final String uri;

  /** Levels */
  protected List<Level> levels;

  /** Exercise difficulty */
  protected final Difficulty difficulty;

  /** Average time to complete exercise in hour */
  protected final long time;

  protected Exercise(
      final String name,
      final String title,
      final String instructions,
      final List<Level> levels,
      final Difficulty difficulty,
      final long time,
      final String uri) {
    this.name = name;
    this.title = title;
    this.instructions = instructions;
    this.levels = levels;
    this.difficulty = difficulty;
    this.time = time;
    this.uri = uri;
  }

  public abstract long getExpectedTime(final int level) throws NonExistingLevel;

  public String getName() {
    return this.name;
  }

  public String getTitle() {
    return this.title;
  }

  public String getInstructions() {
    return this.instructions;
  }

  public Difficulty getDifficulty() {
    return this.difficulty;
  }

  public long getAverageTime() {
    return this.time;
  }

  public int getNbLevels() {
    return levels.size();
  }

  public List<Level> getLevels() {
    return levels;
  }

  public Level getLevel(final int levelId) {
    return levels.get(levelId);
  }

  public String getUri() {
    return uri;
  }
}
