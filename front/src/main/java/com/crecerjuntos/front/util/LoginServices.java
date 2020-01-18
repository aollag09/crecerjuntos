package com.crecerjuntos.front.util;

import com.vaadin.flow.component.UI;
import com.vaadin.flow.server.VaadinSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.util.Objects;

public class LoginServices {

  private static final Logger LOGGER = LoggerFactory.getLogger(LoginServices.class);

  public static void login(final String username, final String section) {
    VaadinSession session = UI.getCurrent().getSession();

    // Store user name in the current session
    LOGGER.info("New session : username : " + username + " section : " + section);
    session.setAttribute(Constants.Session.USERNAME, username);
    session.setAttribute(Constants.Session.SECTION, section);
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
    session.setAttribute(Constants.Session.USERNAME, "");
    session.setAttribute(Constants.Session.SECTION, "");
  }

  public static boolean exists(final String username) {
    throw new NotImplementedException();
  }
}
