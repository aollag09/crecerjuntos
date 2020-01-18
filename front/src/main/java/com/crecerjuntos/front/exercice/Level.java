package com.crecerjuntos.front.exercice;

public class Level {

  /** Id of the level */
  private final int level;

  /** Name the current level Default is exercise name + level id */
  private final String name;

  public Level(int level, String name) {
    this.level = level;
    this.name = name;
  }

  public int getLevel() {
    return level;
  }

  public String getName() {
    return name;
  }

  @Override
  public String toString() {
    return "Level{" + "level=" + getLevel() + ", name='" + getName() + '\'' + '}';
  }
}
