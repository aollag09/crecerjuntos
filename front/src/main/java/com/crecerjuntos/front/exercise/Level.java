package com.crecerjuntos.front.exercise;

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

  /**
   * DB Level starts at 0
   *
   * @return
   */
  public int getDBLevel() {
    return level - 1;
  }

  public String getName() {
    return name;
  }

  @Override
  public String toString() {
    return "Level{" + "level=" + getLevel() + ", name='" + getName() + '\'' + '}';
  }
}
