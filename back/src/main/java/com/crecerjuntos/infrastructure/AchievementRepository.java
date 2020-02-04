package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;

import java.util.List;

public interface AchievementRepository {

  List<Achievement> findByStudent(Long studentId);

  List<Achievement> findDoneByStudent(Long studentId);

  List<Achievement> findLastsByStudent(Long studentId, int nbAchievements);

  List<Achievement> findBySection(String sectionName);

  List<Achievement> findLastsBySection(String sectionName, int nbAchievements);

  Integer getMaxLevel(Long studentId, String exerciseName);

  Integer getBestScore(Long student, int level, String exerciseName);

}
