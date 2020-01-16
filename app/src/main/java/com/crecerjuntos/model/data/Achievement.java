package com.crecerjuntos.model.data;

import com.google.common.base.Objects;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import java.sql.Date;

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

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "studentId")
    @Column(nullable = false)
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
    @Min(0)
    @Max(100)
    public final double progression;

    /**
     * Score, should be between 0 and 100
     */
    @Min(0)
    @Max(100)
    public final int score;

    public Achievement(final Student student,
                       final String sessionId,
                       final Date timestamp,
                       final String exercise,
                       final int level,
                       final double progression,
                       final int score) {
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
}
