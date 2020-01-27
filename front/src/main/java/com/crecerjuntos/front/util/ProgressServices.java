package com.crecerjuntos.front.util;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.services.AuthoringService;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.server.VaadinSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Calendar;
import java.util.Random;

public class ProgressServices {

  private static final Logger logger = LoggerFactory.getLogger(ProgressServices.class);
  private static final Random random = new Random();
  private static final IAuthoringServices authoring = new AuthoringService();

  public static void start(final Exercise exercise, final int level) {
    long id = random.nextLong();
    VaadinSession session = UI.getCurrent().getSession();
    Student student = LoginServices.getStudent();
    Achievement achievement =
        new Achievement(
            id,
            student,
            session.getSession().getId(),
            new java.sql.Date(Calendar.getInstance().getTime().getTime()),
            exercise.getName(),
            level,
            0,
            0);
    logger.info(
        "User '{}' START game '{}' level '{}'", student.getName(), exercise.getName(), level);
    authoring.add(achievement);
  }

  public static void end(final Exercise exercise, final int level, final int score) {
    long id = random.nextLong();
    VaadinSession session = UI.getCurrent().getSession();
    Student student = LoginServices.getStudent();
    Achievement achievement =
        new Achievement(
            id,
            student,
            session.getSession().getId(),
            new java.sql.Date(Calendar.getInstance().getTime().getTime()),
            exercise.getName(),
            level,
            100,
            score);
    logger.info(
        "User '{}' END game '{}' level '{}' with score '{}'",
        student.getName(),
        exercise.getName(),
        level,
        score);
    authoring.add(achievement);
  }
}
