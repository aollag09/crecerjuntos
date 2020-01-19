package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AchievementRepository extends JpaRepository<Achievement, Long> {

  @Query("SELECT a FROM Achievement a WHERE student_id = ?1")
  List<Achievement> findByStudent(Long studentId);

  @Query("SELECT a FROM Achievement a WHERE student_id = ?1")
  List<Achievement> findDoneByStudent(Long studentId);

    @Query("SELECT a FROM Achievement a WHERE student_id = ?1 ORDER BY timestamp DESC")
    List<Achievement> findLastsByStudent(Long studentId, int nbAchievements);

    @Query("SELECT a FROM Achievement a WHERE section_id = ?1")
    List<Achievement> findBySection(Long sectionId);

    @Query("SELECT a FROM Achievement a WHERE section_id = ?1 ORDER BY timestamp DESC")
    List<Achievement> findLastsBySection(Long sectionId, int nbAchievements);
}
