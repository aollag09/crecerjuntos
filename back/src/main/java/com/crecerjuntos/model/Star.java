package com.crecerjuntos.model;

import com.google.common.base.Objects;

public class Star {

  /** Unique, private & generated id */
  private final Long id;

  /** Identifier of the student */
  private final String studentId;

  /** Name of the exercice */
  private final String exercice;

  /** Number of Stars, between 0 and 5 */
  private final int stars;

  public Star(final Long id, final String studentId, final String exercice, final int stars) {
    this.id = id;
    this.studentId = studentId;
    this.exercice = exercice;
    this.stars = stars;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Star star = (Star) o;
    return Objects.equal(id, star.id);
  }

  @Override
  public int hashCode() {
    return Objects.hashCode(id);
  }

  public Long getId() {
    return id;
  }

  public String getStudentId() {
    return studentId;
  }

  public String getExercice() {
    return exercice;
  }

  public int getStars() {
    return stars;
  }
}
