package com.crecerjuntos.services;

import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

public class TestServices {

  public static Random random = new Random(System.nanoTime());
  public static IAuthoringServices authoringServices = new AuthoringService();
  public static IAchievementAccess achievementAccess = new AchievementService();
  public static IStudentAccess studentAccess = new StudentService();

  public static final Student generateTestStudent() throws Exception {
    return generateTestStudent("Test Student");
  }

  public static final Student generateTestStudent(String studentName) throws Exception {
    return generateTestStudent(studentName, Section.DEFAULT);
  }

  public static final Student generateTestStudent(String studentName, Section section)
      throws Exception {
    String mail = "student.test" + UUID.randomUUID() + "@gmail.com";
    Student student = new Student(studentName, mail, "password", section);
    authoringServices.add(student);
    return studentAccess.byMail(mail);
  }

  public static Timestamp getTimestamp() {
    return new Timestamp(new Date().getTime());
  }
}
