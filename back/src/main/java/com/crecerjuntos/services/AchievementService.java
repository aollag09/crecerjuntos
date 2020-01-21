package com.crecerjuntos.services;

import com.crecerjuntos.config.JpaEntityManagerFactory;
import com.crecerjuntos.infrastructure.AchievementRepository;
import com.crecerjuntos.infrastructure.AchievementRepositoryImpl;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.base.IAuthoringServices;

import java.util.List;

public class AchievementService implements IAchievementAccess {

  private AchievementRepository achievementRepository;

  public AchievementService(){
    this.achievementRepository = new AchievementRepositoryImpl(JpaEntityManagerFactory.getEntityManager());
  }

  public AchievementService(AchievementRepository achievementRepository) {
    this.achievementRepository = achievementRepository;
  }

  @Override
  public List<Achievement> get(Student student) {
    return achievementRepository.findByStudent(student.getId());
  }

  @Override
  public List<Achievement> getDone(Student student) {
    return achievementRepository.findDoneByStudent(student.getId());
  }

  @Override
  public List<Achievement> getLasts(Student student, int nbAchievement) {
    // TODO: replace with pageable
    return achievementRepository
        .findLastsByStudent(student.getId(), nbAchievement)
        .subList(0, nbAchievement);
  }

  @Override
  public List<Achievement> get(Section section) {
    return achievementRepository.findBySection(section.getName());
  }

  @Override
  public List<Achievement> getLasts(Section section, int nbAchievements) {
    // TODO: replace with pageable
    return achievementRepository
        .findLastsBySection(section.getName(), nbAchievements)
        .subList(0, nbAchievements);
  }

}
