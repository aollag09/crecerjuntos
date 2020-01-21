package com.crecerjuntos.services;

import com.crecerjuntos.config.JpaEntityManagerFactory;
import com.crecerjuntos.infrastructure.StudentRepositoryImpl;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import org.junit.Before;
import org.junit.Test;
import javax.persistence.EntityManager;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class StudentServiceTest {

    StudentService studentService;
    AuthoringService authoringService;
    EntityManager em;


    @Before
    public void setUp(){
        em = JpaEntityManagerFactory.getEntityManager();
        studentService = new StudentService(new StudentRepositoryImpl(em));
    }

    @Test
    public void searchTest(){
        // Add a test student in repository
        Student testStudent = new Student(1234L, "Pedro test", Section.DEFAULT);
        authoringService.add(testStudent);

        // Search
        List<Student> res  = studentService.search("edro");


        //Check that the student was found by search
        assertEquals(1, res.size());
        assertEquals("Pedro test", res.get(0).getName());
    }
  }
