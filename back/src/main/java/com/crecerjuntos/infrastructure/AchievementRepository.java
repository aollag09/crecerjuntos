package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.base.IAchievementAccess;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AchievementRepository extends JpaRepository<Achievement, Long>  {
}
