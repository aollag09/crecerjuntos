package com.crecerjuntos.services;

import com.crecerjuntos.config.JpaEntityManagerFactory;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.infrastructure.StudentRepositoryImpl;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;

import java.util.List;

public class StudentService implements IStudentAccess {

  private StudentRepository studentRepository;

  public StudentService(StudentRepository studentRepository) {
    this.studentRepository = studentRepository;
  }

  public StudentService() {
    this.studentRepository = new StudentRepositoryImpl(JpaEntityManagerFactory.getEntityManager());
  }

  @Override
  public Student byName(String name) {
    return studentRepository.findByName(name);
  }

  @Override
  public Student byMail(String mail) {
    return studentRepository.findByMail(mail);
  }

  @Override
  public Student byId(Long id) {
    return studentRepository.findById(id);
  }

  @Override
  public List<Student> search(String name) {
    return studentRepository.findByPartialName(name);
  }

  @Override
  public List<Student> getStudents(Section section) {
    return studentRepository.findStudentsBySection(section.getName());
  }

  @Override
  public Student getStudent(Achievement achievement) {
    // TODO: Remove from this interface ?
    return achievement.getStudent();
  }
}
