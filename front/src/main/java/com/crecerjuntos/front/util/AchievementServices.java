package com.crecerjuntos.front.util;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.services.AuthoringService;

import java.util.Calendar;
import java.util.Random;

public class AchievementServices {

  public static void start(
      final Student student, final Exercise exercise, final int level, final String session) {

    Random random = new Random();
    long id = random.nextLong();
    Achievement achievement =
        new Achievement(
            id,
            student,
            session,
            new java.sql.Date(Calendar.getInstance().getTime().getTime()),
            exercise.getName(),
            level,
            0,
            0);

    IAuthoringServices autho = new AuthoringService();
    autho.add(achievement);
  }

}
