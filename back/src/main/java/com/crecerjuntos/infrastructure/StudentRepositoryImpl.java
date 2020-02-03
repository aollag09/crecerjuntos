package com.crecerjuntos.infrastructure;

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
    TypedQuery<Student> q =
        em.createQuery("SELECT s FROM Student s WHERE name = :name", Student.class);
    q.setParameter("name", name);
    List<Student> potentialStudents = q.getResultList();
    if (potentialStudents.size() == 1) return potentialStudents.get(0);
    else return null;
  }

  @Override
  public Student findByMail(String mail) {
    TypedQuery<Student> q =
        em.createQuery("SELECT s FROM Student s WHERE mail = :mail", Student.class);
    q.setParameter("mail", mail);
    List<Student> potentialStudents = q.getResultList();
    if (potentialStudents.size() == 1) return potentialStudents.get(0);
    else return null;
  }

  @Override
  public List<Student> findStudentsBySection(String sectionName) {
    TypedQuery<Student> q =
        em.createQuery("SELECT s FROM Student s WHERE section = :sectionName", Student.class);
    q.setParameter("sectionName", sectionName);
    return q.getResultList();
  }

  @Override
  public List<Student> findByPartialName(String s) {
    TypedQuery<Student> q =
        em.createQuery("SELECT s FROM Student s WHERE name LIKE :searchField", Student.class);
    q.setParameter("searchField", "%" + s + "%");
    return q.getResultList();
  }

  @Override
  public Student findById(Long id) {
    TypedQuery<Student> q = em.createQuery("SELECT s FROM Student s WHERE id = :id", Student.class);
    q.setParameter("id", id);
    List<Student> potentialStudents = q.getResultList();
    if (potentialStudents.size() == 1) return potentialStudents.get(0);
    else return null;
  }
}
