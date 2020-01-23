package com.crecerjuntos.model.base;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;

import java.util.List;

public interface IStudentAccess {

  Student byName(final String name);

  Student byMail(final String mail);

  Student byId(final Long id);

  List<Student> search(final String name);

  List<Student> getStudents(final Section section);

  Student getStudent(final Achievement achievement);
}
