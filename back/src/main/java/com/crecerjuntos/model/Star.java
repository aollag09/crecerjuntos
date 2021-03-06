package com.crecerjuntos.model;

import com.google.common.base.Objects;

public final class Star implements BaseEntity {

  /** Unique, private & generated id */
  private final Long id;

  /** Identifier of the student */
  private final String studentId;

  /** Name of the exercise */
  private final String exercise;

  /** Number of Stars, between 0 and 5 */
  private final int stars;

  public Star(final Long id, final String studentId, final String exercise, final int stars) {
    this.id = id;
    this.studentId = studentId;
    this.exercise = exercise;
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

  @Override
  public Long getId() {
    return id;
  }

  public String getStudentId() {
    return studentId;
  }

  public String getExercise() {
    return exercise;
  }

  public int getStars() {
    return stars;
  }
}
