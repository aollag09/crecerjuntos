package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Section;
import com.crecerjuntos.model.data.Student;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import javax.persistence.Tuple;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class SectionDao {

    @Autowired
    private SessionFactory sessionFactory;


    public Section findByName(String name) {

        List<Section> potentialSections = (List<Section>) sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM section WHERE name = " + name)
                .getResultList();

        if (potentialSections.size() == 1) return potentialSections.get(0); else return null;

    }

    public Section findById(String id) {
        List<Section> potentialSections = (List<Section>) sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM section WHERE id = " + id)
                .getResultList();

        if (potentialSections.size() == 1) return potentialSections.get(0); else return null;
    }

    public List<Section> findByPartialName(String s){
        List<Section> potentialSections = (List<Section>) sessionFactory
                .getCurrentSession()
                .createQuery("SELECT * FROM section WHERE name LIKE %" + s + "%")
                .getResultList();

        return potentialSections;
    }

    public Section findStudentSection(Student student){
        TypedQuery<Tuple> query = sessionFactory
                .getCurrentSession()
                .createQuery("SELECT student.section_id, section.section_name FROM student JOIN section WHERE student.id = " + student.getId());

        return new Section((String) query.getSingleResult().get(0), (String) query.getSingleResult().get(1));
    }

    public Section findAchievementSection(Achievement achievement){
        TypedQuery<Tuple> query = sessionFactory
                .getCurrentSession()
                .createQuery("SELECT achievement.section_id, section.section_name FROM achievement JOIN section WHERE achievement.student_id = " + achievement.student.getId() + "AND achievement.timestamp = " + achievement.timestamp);

        return new Section((String) query.getSingleResult().get(0), (String) query.getSingleResult().get(1));
    }

}
