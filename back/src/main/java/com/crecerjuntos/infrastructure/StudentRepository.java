package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IStudentAccess;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

    @Query("SELECT s FROM Student s WHERE name = ?1")
    Student findByName(final String name);

    @Query("SELECT s FROM Student s WHERE section_id = ?1")
    List<Student> findStudentsBySection(final Long sectionId);


    @Query("SELECT s FROM Student s WHERE name LIKE %?1%")
    List<Student> findByPartialName(final String s);

}
