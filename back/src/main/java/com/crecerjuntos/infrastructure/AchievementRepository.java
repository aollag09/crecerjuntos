package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;

import java.util.List;

public interface AchievementRepository {

  List<Achievement> findByStudent(Long studentId);

  List<Achievement> findDoneByStudent(Long studentId);

  List<Achievement> findByScoreByStudent(Long id, int scoreMin, int scoreMax);

  List<Achievement> findLastsByStudent(Long studentId, int nbAchievements);

  List<Achievement> findBySection(String sectionName);

  List<Achievement> findLastsBySection(String sectionName, int nbAchievements);

  Integer getMaxLevel(Long studentId, String exerciseName);

  Integer getBestScore(Long studentId, int level, String exerciseName);

  Integer getPodium(Long studentId, int level, String exercise);

  Integer getSectionPodium(Long id, String sectionName, int level, String exerciseName);
}
