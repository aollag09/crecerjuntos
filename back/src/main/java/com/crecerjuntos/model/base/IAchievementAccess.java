package com.crecerjuntos.model.base;

import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Section;
import com.crecerjuntos.model.data.Student;

import java.util.List;

public interface IAchievementAccess {

    List<Achievement> get(final Student student);

    /** Retrieve all achievements where progression is >= 100 */
    List<Achievement> getDone(final Student student);

    /** Get the lasts achievements for a student ordering by timestamp */
    List<Achievement> getLasts(final Student student, final int nbAchievement);

    List<Achievement> get(final Section section);

    /** Get the lasts achievements for an entire section ordering by timestamp */
    List<Achievement> getLasts(final Section section, final int nbAchievements);

}