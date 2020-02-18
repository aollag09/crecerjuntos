package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Score;

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
            "SELECT MAX(score) FROM Achievement a WHERE student_id = :studentId AND exercise = :exerciseName AND level = :level AND progress = 100",
            Integer.class);
    q.setParameter("studentId", studentId);
    q.setParameter("exerciseName", exerciseName);
    q.setParameter("level", level);

    return q.getSingleResult();
  }

  @Override
  public Integer getPodium(Long studentId, int level, String exerciseName) {
    Integer bestStudentScore = getBestScore(studentId, level, exerciseName);

    // Query the 3 best score of the current section
    TypedQuery<Integer> q =
        em.createQuery(
            "SELECT DISTINCT(score) FROM Achievement a WHERE exercise = :exerciseName AND level = :level  "
                + "AND progress = 100 AND score >= :minScore ORDER BY score DESC",
            Integer.class);
    q.setParameter("exerciseName", exerciseName);
    q.setParameter("level", level);
    q.setParameter("minScore", Score.GOOD_SCORE);
    q.setMaxResults(3);

    // Analyse podium
    List<Integer> podium = q.getResultList();
    int podiumStep = -1;
    if (podium.size() > 0 && podium.get(0).equals(bestStudentScore)) podiumStep = 1;
    else if (podium.size() > 1 && podium.get(1).equals(bestStudentScore)) podiumStep = 2;
    else if (podium.size() > 2 && podium.get(2).equals(bestStudentScore)) podiumStep = 3;
    return podiumStep;
  }
}
