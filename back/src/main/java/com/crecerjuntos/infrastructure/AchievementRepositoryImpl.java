package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.Collections;
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

  @Override
  public Integer getMaxLevel(Long studentId, String exerciseName) {
    TypedQuery<Integer> q =
        em.createQuery(
            "SELECT MAX(level) FROM Achievement a WHERE student_id = :studentId AND exercise = :exerciseName AND progress = 100",
            Integer.class);
    q.setParameter("studentId", studentId);
    q.setParameter("exerciseName", exerciseName);
    return q.getSingleResult();
  }

  @Override
  public Integer getBestScore(Long studentId, int level, String exerciseName) {
    TypedQuery<Integer> q =
        em.createQuery(
            "SELECT MAX(score) FROM Achievement a WHERE student_id = :studentId AND exercise = :exerciseName AND level = :level",
            Integer.class);
    q.setParameter("studentId", studentId);
    q.setParameter("exerciseName", exerciseName);
    q.setParameter("level", level);

    return q.getSingleResult();
  }

  @Override
  public Integer getPodium(Student student, int level, String exercise) {
    return null;
  }
}
