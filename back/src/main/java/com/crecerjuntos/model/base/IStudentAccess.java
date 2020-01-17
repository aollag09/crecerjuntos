package com.crecerjuntos.model.base;

import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Section;
import com.crecerjuntos.model.data.Student;

import java.util.List;

public interface IStudentAccess {

    Student byName(final String name);

    Student byId(final String id);

    List<Student> search(final String name);

    List<Student> getStudents( final Section section);

    Student getStudent(final Achievement achievement);
}
