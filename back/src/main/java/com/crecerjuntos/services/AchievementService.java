package com.crecerjuntos.services;

import com.crecerjuntos.infrastructure.AchievementRepository;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.base.IAuthoringServices;

import java.util.List;

public class AchievementService implements IAchievementAccess, IAuthoringServices {

  private AchievementRepository achievementRepository;

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

  @Override
  public void add(Student student) {
    throw new IllegalArgumentException("Cannot add student with AchievementService");
  }

  @Override
  public void remove(Student student) {
    throw new IllegalArgumentException("Cannot remove student with AchievementService");
  }

  @Override
  public void add(Section section) {
    throw new IllegalArgumentException("Cannot add section with AchievementService");
  }

  @Override
  public void remove(Section section) {
    throw new IllegalArgumentException("Cannot remove section with AchievementService");
  }

  @Override
  public void add(Achievement achievement) {
    achievementRepository.save(achievement);
  }

  @Override
  public void remove(Achievement achievement) {
    achievementRepository.delete(achievement);
  }

  @Override
  public void add(Star star) {
    throw new IllegalArgumentException("Cannot add star with AchievementService");
  }

  @Override
  public void remove(Star star) {
    throw new IllegalArgumentException("Cannot remove star with AchievementService");
  }
}
