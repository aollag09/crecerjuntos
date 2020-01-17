package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.data.*;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AchievementDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Achievement> findByStudent(Student student){
        //TODO: exception handling for session and cast
        return (List<Achievement>) sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM achievement WHERE studentId = "+ student.getId())
                .getResultList()
                ;
    }

    public List<Achievement> findDoneByStudent(Student student){
        //TODO: exception handling for session and cast
        return (List<Achievement>) sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM achievement WHERE studentId = " + student.getId() + "AND progression = 100")
                .getResultList()
                ;
    }

    public List<Achievement> findLastsByStudent(Student student, int nbAchievement){
        //TODO: exception handling for session and cast
        return (List<Achievement>) sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM achievement WHERE studentId = " + student.getId() + "ORDER BY timestamp LIMIT" + nbAchievement)
                .getResultList()
                ;
    }

    public List<Achievement> findBySection(Section section){
        //TODO: exception handling for session and cast
        return (List<Achievement>) sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM achievement WHERE sectionId = " + section.getId())
                .getResultList()
                ;
    }

    public List<Achievement> findLastsBySection(Section section, int nbAchievement){
        //TODO: exception handling for session and cast
        return (List<Achievement>) sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM achievement WHERE sectionId = " + section.getId() + "ORDER BY timestamp LIMIT" + nbAchievement)
                .getResultList()
                ;
    }

}
