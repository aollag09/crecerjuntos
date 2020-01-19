package com.crecerjuntos;

import com.crecerjuntos.infrastructure.AchievementRepository;
import com.crecerjuntos.infrastructure.SectionRepository;
import com.crecerjuntos.services.StudentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CSCoursesApp {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    StudentService studentService;

    @Autowired
    SectionRepository sectionRepository;

    @Autowired
    AchievementRepository achievementRepository;

    public static void main(String[] args) {
        SpringApplication.run(CSCoursesApp.class, args);
    }
}
