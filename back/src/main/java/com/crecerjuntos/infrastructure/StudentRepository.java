package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;

import java.util.List;

public interface StudentRepository {

  Student findByName(final String name);

  Student findByMail(final String mail);

  List<Student> findByPartialName(final String s);

  Student findById(final Long id);

  List<Student> findStudentsBySection(Section section);
}
