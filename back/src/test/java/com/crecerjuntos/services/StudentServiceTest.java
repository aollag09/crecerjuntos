package com.crecerjuntos.services;

import com.crecerjuntos.config.JpaEntityManagerFactory;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DatabaseException;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import javax.persistence.EntityManager;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import static org.junit.Assert.assertEquals;
import static org.mockito.Matchers.any;
import static org.mockito.Mockito.when;

public class StudentServiceTest {

  @Test
  public void searchTest() throws Exception {

    int randomInt = TestServices.random.nextInt(100);
    Student testStudent = TestServices.generateTestStudent("Pedro test" + randomInt);
    TestServices.authoringServices.add(testStudent);

    // Search
    List<Student> res = TestServices.studentAccess.search("edro");
    List<Student> foundBySearch = res.stream().filter(s -> s.getName().equals("Pedro test" + randomInt)).collect(Collectors.toList());


    // Check that the student was found by search
    assertEquals("Pedro test" + randomInt, foundBySearch.get(0).getName());
  }

  // TODO: Add cascade delete on table creation
  //@Test
  public void cascadeDeletionTest() throws Exception {
    Student student = TestServices.generateTestStudent();
    TestServices.authoringServices.add(student);

    Timestamp date = TestServices.getTimestamp();
    Achievement achievement =
            new Achievement(student, "session", date, "exercise-test", 0, 100, 0);
    TestServices.authoringServices.add(achievement);

    Student insertedStudent = TestServices.studentAccess.getStudent(achievement);

    TestServices.authoringServices.remove(insertedStudent);
  }
}
