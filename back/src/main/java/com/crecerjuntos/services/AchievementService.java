package com.crecerjuntos.services;

import com.crecerjuntos.model.base.*;
import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Section;
import com.crecerjuntos.model.data.Student;
import com.crecerjuntos.infrastructure.AchievementDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AchievementService implements IAchievementAccess {


    @Autowired
    private AchievementDao achievementDao;

    @Override
    public List<Achievement> get(Student student) {
        return achievementDao.findByStudent(student);
    }

    @Override
    public List<Achievement> getDone(Student student) {
        return achievementDao.findDoneByStudent(student);
    }

    @Override
    public List<Achievement> getLasts(Student student, int nbAchievement) {
        return achievementDao.findLastsByStudent(student, nbAchievement);
    }

    @Override
    public List<Achievement> get(Section section) {
        return achievementDao.findBySection(section);
    }

    @Override
    public List<Achievement> getLasts(Section section, int nbAchievements) {
        return achievementDao.findLastsBySection(section, nbAchievements);
	}


}
