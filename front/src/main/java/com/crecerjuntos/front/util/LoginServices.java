package com.crecerjuntos.front.util;

import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;
import com.crecerjuntos.model.exception.DatabaseException;
import com.crecerjuntos.services.AuthoringService;
import com.crecerjuntos.services.StudentService;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.server.VaadinSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Objects;
import java.util.Random;

public class LoginServices {

  private static final Logger logger = LoggerFactory.getLogger(LoginServices.class);
  private static final Random random = new Random();
  private static final IStudentAccess access = new StudentService();

  public static Student create(
      String mail, final String username, final String password, final String section)
      throws DatabaseException {
    // Create student
    Student student = new Student(username, mail, password, Section.fromString(section));

    // Register new student in database
    logger.info("Create Student User {}", student);
    IAuthoringServices authoringServices = new AuthoringService();
    authoringServices.add(student);

    // Reload student with the right id
    student = access.byMail(student.getMail());

    return student;
  }

  public static boolean exists(final String mail) {
    return access.byMail(mail) != null;
  }

  public static Student get(final String mail) {
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
      logger.info(
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
    logger.info("Login : username : '{}', mail : '{}', section : '{}'", username, mail, section);
    session.setAttribute(Constants.Session.STUDENT, student);
  }
}
