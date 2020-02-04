package com.crecerjuntos.model.base;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;

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

  /** Get the max level finished by a student for a given exercise */
  Integer getMaxLevel(Student student, String exerciseName);

  /** Get the score of a student on a specific level of an exercise */
  Integer getBestScore(Student student, int level, String exerciseName);

}
