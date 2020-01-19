package com.crecerjuntos.front.exercice;

import com.crecerjuntos.front.util.Difficulty;

import java.util.List;

public abstract class Exercise {

  /** Name of the exercise */
  protected String name;

  /** Levels */
  protected List<Level> levels;

  /** Exercice difficulty */
  protected Difficulty difficulty;

  /** Average time to complete exercise in hour */
  protected long time;

  protected Exercise(
      final String name, final List<Level> levels, final Difficulty difficulty, final long time) {
    this.name = name;
    this.levels = levels;
    this.difficulty = difficulty;
    this.time = time;
  }

  public String getName() {
    return this.name;
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
}
