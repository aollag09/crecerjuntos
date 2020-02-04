package com.crecerjuntos.services;

import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;

import java.util.Random;
import java.util.UUID;

public class TestServices {

  public static Random random = new Random(System.nanoTime());
  public static IAuthoringServices authoringServices = new AuthoringService();
  public static IAchievementAccess achievementAccess = new AchievementService();
  public static IStudentAccess studentAccess = new StudentService();

  public static final Student generateTestStudent() throws Exception {
    String mail = "student.test" + UUID.randomUUID() + "@gmail.com";
    Student student = new Student("Test Student", mail, "password", Section.DEFAULT);
    authoringServices.add(student);
    return studentAccess.byMail(mail);
  }
}
