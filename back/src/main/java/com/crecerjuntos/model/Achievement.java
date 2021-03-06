package com.crecerjuntos.model;

import com.google.common.base.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Entity
public final class Achievement implements BaseEntity {
  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Achievement that = (Achievement) o;
    return Objects.equal(student.getId(), that.student.getId())
        && Objects.equal(sessionId, that.sessionId)
        && Objects.equal(timestamp, that.timestamp)
        && Objects.equal(exercise, that.exercise);
  }

  @Override
  public int hashCode() {
    return Objects.hashCode(student.getId(), sessionId, timestamp, exercise);
  }

  /** Unique, private & generated id */
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  @ManyToOne
  @JoinColumn(name = "student_id", nullable = false)
  private Student student;

  /** Session id */
  private String sessionId;

  /** Timestamp of the achievement */
  private Timestamp timestamp;

  /** Name of the current exercise */
  @Column(nullable = false)
  private String exercise;

  /** Level of the current exercise, default : 1 */
  @Column(columnDefinition = "integer default 1")
  private int level;

  /** Progression should be between 0 and 100 */
  private double progress;

  /** Score, should be between 0 and 100 */
  private int score;

  public Achievement() {
    this(new Student(), "0", Timestamp.valueOf(LocalDateTime.now()), "No exercise", 0, 0, 0);
  }

  public Achievement(
      Student student,
      String sessionId,
      Timestamp timestamp,
      String exercise,
      int level,
      double progress,
      int score) {
    this.student = student;
    this.sessionId = sessionId;
    this.timestamp = timestamp;
    this.exercise = exercise;
    this.level = level;
    this.progress = progress;
    this.score = score;
  }

  @Override
  public String toString() {
    return "Achievement{"
        + "studentId='"
        + student.getId()
        + '\''
        + ", sessionId='"
        + sessionId
        + '\''
        + ", timestamp="
        + timestamp
        + ", exercise='"
        + exercise
        + '\''
        + ", level="
        + level
        + ", progression="
        + progress
        + ", score="
        + score
        + '}';
  }

  @Override
  public Long getId() {
    return id;
  }

  public Student getStudent() {
    return student;
  }

  public String getSessionId() {
    return sessionId;
  }

  public Timestamp getTimestamp() {
    return timestamp;
  }

  public String getExercise() {
    return exercise;
  }

  public int getLevel() {
    return level;
  }

  public double getProgress() {
    return progress;
  }

  public int getScore() {
    return score;
  }
}
