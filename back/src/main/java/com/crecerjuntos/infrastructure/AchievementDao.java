package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Student;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AchievementDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Achievement> findByStudent(Student student){
        return sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM achievement WHERE studentId = student.id")
                .getResultList()
                ;
    }

}
