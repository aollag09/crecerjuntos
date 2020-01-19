package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class StudentRepositoryImpl implements StudentRepository {

    private EntityManager em;

    public StudentRepositoryImpl(EntityManager em) {
        this.em = em;
    }

    @Override
    public Student findByName(String name) {
        TypedQuery<Student> q = em.createQuery("SELECT s FROM Student s WHERE name = ?name", Student.class);
        q.setParameter("name", name);
        List<Student> potentialStudents = q.getResultList();
        if (potentialStudents.size() == 1) return potentialStudents.get(0); else return null;
    }

    @Override
    public List<Student> findStudentsBySection(Long sectionId) {
        TypedQuery<Student> q = em.createQuery("SELECT s FROM Student s WHERE section_id = ?sectionId", Student.class);
        q.setParameter("sectionId", sectionId);
        return q.getResultList();
    }

    @Override
    public List<Student> findByPartialName(String s) {
        TypedQuery<Student> q = em.createQuery("SELECT s FROM Student s WHERE name LIKE :searchField", Student.class);
        q.setParameter("searchField", "%" + s + "%");
        return q.getResultList();
    }

    @Override
    public Student findById(Long id) {
        TypedQuery<Student> q = em.createQuery("SELECT s FROM Student s WHERE id = ?id", Student.class);
        q.setParameter("id", id);
        List<Student> potentialStudents = q.getResultList();
        if (potentialStudents.size() == 1) return potentialStudents.get(0); else return null;
    }

    public Student save(Student student){
        em.getTransaction().begin();
        if (student.getId() == null){
            em.persist(student);
        }
        else {
            student = em.merge(student);
        }
        em.getTransaction().commit();
        return student;
    }

    public void delete(Student student) {
        if (em.contains(student)){
            em.remove(student);
        }
    }
}