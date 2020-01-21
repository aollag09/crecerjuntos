package com.crecerjuntos.front.util;

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

  public static void create(final String username, final String section) {
    // Create student
    Random random = new Random();
    long id = random.nextLong();
    Student student = new Student(id, username);

    // Register new student in database
    LOGGER.info("Create Student User {}", student);
    IAuthoringServices authoringServices = new AuthoringService();
    authoringServices.add(student);
  }

  public static void login(final String username, final String section) {
    VaadinSession session = UI.getCurrent().getSession();

    // Store user name in the current session
    LOGGER.info("Login : username : " + username + " section : " + section);
    session.setAttribute(Constants.Session.USERNAME, username);
    session.setAttribute(Constants.Session.SECTION, section);
  }

  public static boolean exists(final String username) {
    IStudentAccess access = new StudentService();
    return access.byName(username) != null;
  }

  public static String getUserName() {
    VaadinSession session = UI.getCurrent().getSession();
    String username = "";
    if (Objects.nonNull(session)
        && Objects.nonNull(session.getAttribute(Constants.Session.USERNAME)))
      username = session.getAttribute(Constants.Session.USERNAME).toString();
    return username;
  }

  public static void logout() {
    VaadinSession session = UI.getCurrent().getSession();
    LOGGER.info(
        "Logout : username : "
            + session.getAttribute(Constants.Session.USERNAME)
            + " section : "
            + session.getAttribute(Constants.Session.SECTION));
    session.setAttribute(Constants.Session.USERNAME, "");
    session.setAttribute(Constants.Session.SECTION, "");
  }
}
