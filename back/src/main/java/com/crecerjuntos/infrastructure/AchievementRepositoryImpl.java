package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class AchievementRepositoryImpl implements AchievementRepository {

  private EntityManager em;

  public AchievementRepositoryImpl(EntityManager em) {
    this.em = em;
  }

  @Override
  public List<Achievement> findByStudent(Long studentId) {
    TypedQuery<Achievement> q =
        em.createQuery(
            "SELECT a FROM Achievement a WHERE student_id = :studentId", Achievement.class);
    q.setParameter("studentId", studentId);
    return q.getResultList();
  }

  @Override
  public List<Achievement> findDoneByStudent(Long studentId) {
    TypedQuery<Achievement> q =
        em.createQuery(
            "SELECT a FROM Achievement a WHERE student_id = :studentId AND progress >= 100",
            Achievement.class);
    q.setParameter("studentId", studentId);
    return q.getResultList();
  }

  @Override
  public List<Achievement> findLastsByStudent(Long studentId, int nbAchievements) {
    TypedQuery<Achievement> q =
        em.createQuery(
            "SELECT a FROM Achievement a WHERE student_id = :studentId ORDER BY timestamp DESC",
            Achievement.class);
    q.setParameter("studentId", studentId);
    return q.getResultList().subList(0, nbAchievements);
  }

  @Override
  public List<Achievement> findBySection(String sectionName) {
    TypedQuery<Achievement> q =
        em.createQuery(
            "SELECT a FROM Achievement a WHERE section = :sectionName", Achievement.class);
    q.setParameter("sectionName", sectionName);
    return q.getResultList();
  }

  @Override
  public List<Achievement> findLastsBySection(String sectionName, int nbAchievements) {
    TypedQuery<Achievement> q =
        em.createQuery(
            "SELECT a FROM Achievement a WHERE section = :sectionName ORDER BY timestamp DESC",
            Achievement.class);
    q.setParameter("sectionName", sectionName);
    return q.getResultList().subList(0, nbAchievements);
  }

}
