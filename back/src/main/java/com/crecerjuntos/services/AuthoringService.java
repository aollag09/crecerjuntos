package com.crecerjuntos.services;

import com.crecerjuntos.config.JpaEntityManagerFactory;
import com.crecerjuntos.infrastructure.AchievementRepository;
import com.crecerjuntos.infrastructure.AchievementRepositoryImpl;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.infrastructure.StudentRepositoryImpl;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import javax.persistence.EntityManager;

public class AuthoringService implements IAuthoringServices {

    private AchievementRepository achievementRepository;

    private StudentRepository studentRepository;

    public AuthoringService(AchievementRepository achievementRepository, StudentRepository studentRepository) {
        this.achievementRepository = achievementRepository;
        this.studentRepository = studentRepository;
    }

    public AuthoringService(){
        EntityManager em = JpaEntityManagerFactory.getEntityManager();
        this.studentRepository = new StudentRepositoryImpl(em);
        this.achievementRepository = new AchievementRepositoryImpl(em);
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
