package com.crecerjuntos.services;

import com.crecerjuntos.infrastructure.AchievementRepository;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

public class AuthoringService implements IAuthoringServices {

    private AchievementRepository achievementRepository;

    private StudentRepository studentRepository;

    public AuthoringService(AchievementRepository achievementRepository, StudentRepository studentRepository) {
        this.achievementRepository = achievementRepository;
        this.studentRepository = studentRepository;
    }


    @Override
    public void add(Student student) {
        studentRepository.save(student);
    }

    @Override
    public void remove(Student student) {
        studentRepository.delete(student);
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
        throw new NotImplementedException();
    }

    @Override
    public void remove(Star star) {
        throw new NotImplementedException();
    }
}
