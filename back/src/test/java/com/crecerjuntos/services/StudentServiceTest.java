package com.crecerjuntos.services;

import com.crecerjuntos.infrastructure.SectionRepository;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;

public class StudentServiceTest {

    private StudentService studentService;

    private SectionRepository sectionRepository;

    // FIXME @Test
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
