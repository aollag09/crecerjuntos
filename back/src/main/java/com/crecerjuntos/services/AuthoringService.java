package com.crecerjuntos.services;

import com.crecerjuntos.config.JpaEntityManagerFactory;
import com.crecerjuntos.infrastructure.*;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.exception.DatabaseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.persistence.EntityManager;

public class AuthoringService implements IAuthoringServices {

  Logger logger = LoggerFactory.getLogger(AuthoringService.class);

  private BaseEntityRepositoryImpl baseEntityRepository;

  public AuthoringService(BaseEntityRepositoryImpl baseEntityRepository) {
  }

  public AuthoringService() {
    EntityManager em = JpaEntityManagerFactory.getEntityManager();
    this.baseEntityRepository = new BaseEntityRepositoryImpl(em);
  }

  @Override
  public void add(Student student) throws DatabaseException {
    baseEntityRepository.save(student);
  }

  @Override
  public void remove(Student student) throws DatabaseException {
    baseEntityRepository.delete(student);
  }

  @Override
  public void add(Achievement achievement) throws DatabaseException {
    baseEntityRepository.save(achievement);
  }

  @Override
  public void remove(Achievement achievement) throws DatabaseException {
    baseEntityRepository.delete(achievement);
  }

  @Override
  public void add(Star star) throws DatabaseException {
    baseEntityRepository.save(star);
  }

  @Override
  public void remove(Star star) throws DatabaseException {
    baseEntityRepository.delete(star);
  }
}
