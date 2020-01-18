package com.crecerjuntos.model;

import com.google.common.base.Objects;

import javax.persistence.*;
import java.sql.Date;
import java.time.LocalDate;

@Entity
public class Achievement {
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Achievement that = (Achievement) o;
        return Objects.equal(student.getId(), that.student.getId()) &&
                Objects.equal(sessionId, that.sessionId) &&
                Objects.equal(timestamp, that.timestamp) &&
                Objects.equal(exercise, that.exercise);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(student.getId(), sessionId, timestamp, exercise);
    }

    /** Unique, private & generated id */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private final Long id;

    @ManyToOne
    @JoinColumn(name = "studentId", nullable = false)
    public final Student student;

    /**
     * Session id
     */
    public final String sessionId;

    /**
     * Timestamp of the achievement
     */
    public final Date timestamp;

    /**
     * Name of the current exercise
     */
    @Column(nullable=false)
    public final String exercise;

    /**
     * Level of the current exercise, default : 1
     */
    @Column(columnDefinition = "integer default 1")
    public final int level;

    /**
     * Progression should be between 0 and 100
     */
    public final double progression;

    /**
     * Score, should be between 0 and 100
     */
    public final int score;

    public Achievement(){
        this(0L, new Student(), "0", Date.valueOf(LocalDate.now()), "No exercise", 0, 0, 0);
    }

    public Achievement(
            final Long id,
            final Student student,
            final String sessionId,
            final Date timestamp,
            final String exercise,
            final int level,
            final double progression,
            final int score) {
        this.id = id;
        this.student = student;
        this.sessionId = sessionId;
        this.timestamp = timestamp;
        this.exercise = exercise;
        this.level = level;
        this.progression = progression;
        this.score = score;
    }

    @Override
    public String toString() {
        return "Achievement{" +
                "studentId='" + student.getId() + '\'' +
                ", sessionId='" + sessionId + '\'' +
                ", timestamp=" + timestamp +
                ", exercise='" + exercise + '\'' +
                ", level=" + level +
                ", progression=" + progression +
                ", score=" + score +
                '}';
    }

    public Long getId() {
        return id;
    }

    public Student getStudent() {
        return student;
    }

    public String getSessionId() {
        return sessionId;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public String getExercise() {
        return exercise;
    }

    public int getLevel() {
        return level;
    }

    public double getProgression() {
        return progression;
    }

    public int getScore() {
        return score;
    }
}
