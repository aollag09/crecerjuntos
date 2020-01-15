package com.crecerjuntos.model.data;

import com.google.common.base.Objects;

import java.sql.Date;

public class Achievement {
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Achievement that = (Achievement) o;
        return Objects.equal(studentId, that.studentId) &&
                Objects.equal(sessionId, that.sessionId) &&
                Objects.equal(timestamp, that.timestamp) &&
                Objects.equal(exercise, that.exercise);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(studentId, sessionId, timestamp, exercise);
    }

    /**
     * Unique student identifier
     */
    public final String studentId;

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
    public final String exercise;

    /**
     * Level of the current exercise, default : 1
     */
    public final int level;

    /**
     * Progression should be between 0 and 100
     */
    public final double progression;

    /**
     * Score, should be between 0 and 100
     */
    public final int score;

    public Achievement(final String studentId,
                       final String sessionId,
                       final Date timestamp,
                       final String exercise,
                       final int level,
                       final double progression,
                       final int score) {
        this.studentId = studentId;
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
                "studentId='" + studentId + '\'' +
                ", sessionId='" + sessionId + '\'' +
                ", timestamp=" + timestamp +
                ", exercise='" + exercise + '\'' +
                ", level=" + level +
                ", progression=" + progression +
                ", score=" + score +
                '}';
    }
}
