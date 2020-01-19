package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;

import java.util.List;

public interface StudentRepository {

  Student findByName(final String name);

  List<Student> findStudentsBySection(final Long sectionId);

  List<Student> findByPartialName(final String s);

  Student findById(final Long id);

  Student save(Student student);

  void delete(Student student);
}
