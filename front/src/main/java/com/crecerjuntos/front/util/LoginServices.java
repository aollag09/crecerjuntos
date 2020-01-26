package com.crecerjuntos.front.util;

import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;
import com.crecerjuntos.services.AuthoringService;
import com.crecerjuntos.services.StudentService;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.server.VaadinSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Objects;
import java.util.Random;

public class LoginServices {

  private static final Logger LOGGER = LoggerFactory.getLogger(LoginServices.class);

  public static Student create(
      String mail, final String username, final String password, final String section) {
    // Create student
    Random random = new Random();
    long id = random.nextLong();
    Student student = new Student(id, username, mail, password, Section.fromString(section));

    // Register new student in database
    LOGGER.info("Create Student User {}", student);
    IAuthoringServices authoringServices = new AuthoringService();
    authoringServices.add(student);

    return student;
  }

  public static boolean exists(final String mail) {
    IStudentAccess access = new StudentService();
    return access.byMail(mail) != null;
  }

  public static Student get(final String mail) {
    IStudentAccess access = new StudentService();
    return access.byMail(mail);
  }

  public static Student getStudent() {
    VaadinSession session = UI.getCurrent().getSession();
    Student student = null;
    if (Objects.nonNull(session)
        && Objects.nonNull(session.getAttribute(Constants.Session.STUDENT)))
      student = (Student) session.getAttribute(Constants.Session.STUDENT);
    return student;
  }

  public static String getUserName() {
    String name = "";
    Student student = getStudent();
    if (student != null) name = student.getName();
    return name;
  }

  public static void logout() {
    VaadinSession session = UI.getCurrent().getSession();
    Student student = getStudent();
    if (student != null) {
      LOGGER.info(
          "Logout : username : " + student.getName() + " section : " + student.getSectionName());
      session.setAttribute(Constants.Session.STUDENT, null);
    }
  }

  public static void login(Student student) {
    VaadinSession session = UI.getCurrent().getSession();
    String username = student.getName();
    String mail = student.getMail();
    String section = student.getSectionName();

    // Store user name in the current session
    LOGGER.info("Login : username : '{}', mail : '{}', section : '{}'", username, mail, section);
    session.setAttribute(Constants.Session.STUDENT, student);
  }
}
