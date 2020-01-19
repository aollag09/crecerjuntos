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
        logger.info("Registering aceleracion-> {}", sectionRepository.save(new Section(1L, "Aceleracion")));
        logger.info("Registering segundo -> {}", sectionRepository.save(new Section(2L, "Segundo")));
        logger.info("Registering tercero -> {}", sectionRepository.save(new Section(3L, "Tercero")));
        logger.info("Registering quarto -> {}", sectionRepository.save(new Section(4L, "Quarto")));
        logger.info("Registering quinto -> {}", sectionRepository.save(new Section(5L, "Quinto")));
        logger.info("Registering sexto -> {}", sectionRepository.save(new Section(6L, "Sexto")));
        logger.info("Registering septimo -> {}", sectionRepository.save(new Section(7L, "Septimo")));
        logger.info("Registering octavo -> {}", sectionRepository.save(new Section(8L, "Octavo")));
        logger.info("Registering noveno -> {}", sectionRepository.save(new Section(9L, "Noveno")));
        logger.info("Registering proceso basico-> {}", sectionRepository.save(new Section(10L, "Proceso Basico")));
    }

}
