package com.crecerjuntos.services;

import com.crecerjuntos.infrastructure.SectionRepository;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

import java.util.List;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
public class StudentServiceTest {

    @Autowired
    private StudentService studentService;

    @Autowired
    private SectionRepository sectionRepository;

    @Test
    public void searchTest(){
        Section testSection = new Section(0L, "Test Section");
        sectionRepository.save(testSection);
        // Add a test student in repository
        Student testStudent = new Student(1234L, "Pedro test", testSection);
        studentService.add(testStudent);

        // Search
        List<Student> res  = studentService.search("e");


        // Check that the student was found by search
        assertEquals(res.size(), 1);
        assertEquals(res.get(0).getName(), "Pedro test");
    }


}
