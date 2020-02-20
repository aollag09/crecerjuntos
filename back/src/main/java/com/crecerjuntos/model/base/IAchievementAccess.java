package com.crecerjuntos.model.base;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Position;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;

import java.util.List;

public interface IAchievementAccess {

  /** List achievements for a student */
  List<Achievement> get(final Student student);

  /** Retrieve all achievements where progression is >= 100 */
  List<Achievement> getDone(final Student student);

  /** Get the lasts achievements for a student ordering by timestamp */
  List<Achievement> getLasts(final Student student, final int nbAchievement);

  /** List achievement for a section */
  List<Achievement> get(final Section section);

  /** Get the lasts achievements for an entire section ordering by timestamp */
  List<Achievement> getLasts(final Section section, final int nbAchievements);

  /** Get the max level finished by a student for a given exercise */
  Integer getMaxLevel(final Student student, final String exerciseName);

  /** Get the score of a student on a specific level of an exercise */
  Integer getBestScore(final Student student, final int level, final String exerciseName);

  /** Get position on the podium for the current student for a dedicated exercise */
  Position getPodium(final Student student, final int level, final String exerciseName);

  /** Get position on the podium for the current student, current section and for an exercise */
  Position getSectionPodium(final Student student, final int level, final String exerciseName);
}
