package com.crecerjuntos.front.exercice;

import java.util.List;

public abstract class Exercise {

  /** Name of the exercise */
  protected String name;

  /** */
  protected List<Level> levels;

  protected Exercise(final String name, final List<Level> levels) {
    this.name = name;
    this.levels = levels;
  }

  public String getName() {
    return this.name;
  }

  public int getNbLevels() {
    return levels.size();
  }

  public List<Level> getLevels() {
    return levels;
  }
}
