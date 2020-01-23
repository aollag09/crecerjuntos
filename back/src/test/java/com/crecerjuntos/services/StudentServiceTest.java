package com.crecerjuntos.services;

import com.crecerjuntos.config.JpaEntityManagerFactory;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.mockito.Matchers.any;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class StudentServiceTest {

    StudentService studentService;
    EntityManager em;

    @Mock
    StudentRepository studentRepository;


    @Before
    public void setUp(){
        em = JpaEntityManagerFactory.getEntityManager();
        studentService = new StudentService(studentRepository);

        // Add a test student in repository
        Student testStudent = new Student(1234L, "Pedro test", Section.DEFAULT);
        List<Student> studentList = new ArrayList<>();
        studentList.add(testStudent);

        when(studentRepository.findByPartialName(any(String.class))).thenReturn(studentList);

    }

    @Test
    public void searchTest(){
        // Search
        List<Student> res  = studentService.search("edro");

        //Check that the student was found by search
        assertEquals(1, res.size());
        assertEquals("Pedro test", res.get(0).getName());
    }
  }
