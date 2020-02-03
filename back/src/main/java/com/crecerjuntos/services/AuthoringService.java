package com.crecerjuntos.services;

import com.crecerjuntos.config.JpaEntityManagerFactory;
import com.crecerjuntos.infrastructure.AchievementRepository;
import com.crecerjuntos.infrastructure.AchievementRepositoryImpl;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.infrastructure.StudentRepositoryImpl;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.exception.DataBaseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.persistence.EntityManager;

public class AuthoringService implements IAuthoringServices {

  Logger logger = LoggerFactory.getLogger(AuthoringService.class);

  private AchievementRepository achievementRepository;

  private StudentRepository studentRepository;

  public AuthoringService(
      AchievementRepository achievementRepository, StudentRepository studentRepository) {
    this.achievementRepository = achievementRepository;
    this.studentRepository = studentRepository;
  }

  public AuthoringService() {
    EntityManager em = JpaEntityManagerFactory.getEntityManager();
    this.studentRepository = new StudentRepositoryImpl(em);
    this.achievementRepository = new AchievementRepositoryImpl(em);
  }

  @Override
  public void add(Student student) throws DataBaseException {
    studentRepository.save(student);
  }

  @Override
  public void remove(Student student) throws DataBaseException {
    studentRepository.delete(student);
  }

  @Override
  public void add(Achievement achievement) throws DataBaseException {
    achievementRepository.save(achievement);
  }

  @Override
  public void remove(Achievement achievement) throws DataBaseException {
    achievementRepository.delete(achievement);
  }

  @Override
  public void add(Star star) throws DataBaseException {
    logger.warn("Star was not added : not implemented yet");
  }

  @Override
  public void remove(Star star) throws DataBaseException {
    logger.warn("Star was not removed : not implemented yet");
  }
}
