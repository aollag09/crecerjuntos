package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DataBaseException;

import java.util.List;

public interface StudentRepository {

  Student findByName(final String name);

  Student findByMail(final String mail);

  List<Student> findStudentsBySection(final String sectionNName);

  List<Student> findByPartialName(final String s);

  Student findById(final Long id);
}
