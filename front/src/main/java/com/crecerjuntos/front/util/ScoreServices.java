package com.crecerjuntos.front.util;

import com.crecerjuntos.front.exercise.data.Score;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.server.VaadinSession;

public class ScoreServices {

  public static void save(final Score score) {
    clean();
    VaadinSession session = UI.getCurrent().getSession();
    session.setAttribute(Constants.Session.SCORE, score);
  }

  private static void clean() {
    VaadinSession session = UI.getCurrent().getSession();
    session.setAttribute(Constants.Session.SCORE, null);
  }

  public static Score get() {
    VaadinSession session = UI.getCurrent().getSession();
    return (Score) session.getAttribute(Constants.Session.SCORE);
  }
}
