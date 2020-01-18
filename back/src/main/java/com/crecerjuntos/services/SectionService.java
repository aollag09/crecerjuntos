package com.crecerjuntos.services;

import com.crecerjuntos.infrastructure.SectionDao;
import com.crecerjuntos.model.base.ISectionAccess;
import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Section;
import com.crecerjuntos.model.data.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SectionService implements ISectionAccess {


    @Autowired
    private SectionDao sectionDao;


    @Override
    public Section byName(String name) {
        return sectionDao.findByName(name);
    }

    @Override
    public Section byId(String id) {
        return sectionDao.findById(id);
    }

    @Override
    public List<Section> search(String name) {
        return sectionDao.findByPartialName(name);
    }

    @Override
    public Section getSection(Student student) {
        return sectionDao.findStudentSection(student);
    }

    @Override
    public Section getSection(Achievement achievement) {
        return sectionDao.findAchievementSection(achievement);
    }
}
