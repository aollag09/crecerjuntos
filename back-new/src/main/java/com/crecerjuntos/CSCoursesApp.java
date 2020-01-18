package com.crecerjuntos;

import com.crecerjuntos.infrastructure.AchievementRepository;
import com.crecerjuntos.infrastructure.SectionRepository;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CSCoursesApp implements CommandLineRunner {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    StudentRepository studentRepository;

    @Autowired
    SectionRepository sectionRepository;

    @Autowired
    AchievementRepository achievementRepository;

    public static void main(String[] args) {
        SpringApplication.run(CSCoursesApp.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        logger.info("Registering proceso basico-> {}", new Section(0L, "Proceso Basico"));
        logger.info("Registering aceleracion-> {}", new Section(1L, "Aceleracion"));
        logger.info("Registering segundo -> {}", new Section(2L, "Segundo"));
        logger.info("Registering tercero -> {}", new Section(3L, "Tercero"));
        logger.info("Registering quarto -> {}", new Section(4L, "Quarto"));
        logger.info("Registering quinto -> {}", new Section(5L, "Quinto"));
        logger.info("Registering sexto -> {}", new Section(6L, "Sexto"));
        logger.info("Registering septimo -> {}", new Section(7L, "Septimo"));
        logger.info("Registering octavo -> {}", new Section(8L, "Octavo"));
        logger.info("Registering noveno -> {}", new Section(9L, "Noveno"));
    }

}
