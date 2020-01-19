package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;

import java.util.List;

public interface AchievementRepository {

  List<Achievement> findByStudent(Long studentId);

  List<Achievement> findDoneByStudent(Long studentId);

  List<Achievement> findLastsByStudent(Long studentId, int nbAchievements);

  List<Achievement> findBySection(Long sectionId);

  List<Achievement> findLastsBySection(Long sectionId, int nbAchievements);

  Achievement save(Achievement achievement);

  void delete(Achievement achievement);
}
