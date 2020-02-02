package com.crecerjuntos.front.exception;

public class NonExistingLevel extends Exception {

  public NonExistingLevel(final String exerciseName, final int level) {
    super("The level " + level + "does not exist for the exercise " + exerciseName);
  }
}
