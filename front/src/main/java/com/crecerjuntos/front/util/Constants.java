package com.crecerjuntos.front.util;

public class Constants {

  public class Session {
    public static final String USERNAME = "username";
    public static final String SECTION = "section";
  }

  public class StyleSheet {
    public static final String CERCER_JUNTOS = "stylesheets/crecerjuntos.css";
  }

  public class ClassStyle {

    public class Main {
      private static final String PREFIX = "main-layout__";
      public static final String LOGO_TERESA = PREFIX + "logo-teresa";
      public static final String TABS = PREFIX + "tabs";
    }

    public class Login {
      private static final String PREFIX = "login-layout__";
      public static final String PANEL = PREFIX + "panel";
      public static final String TERESA = PREFIX + "teresa";
      public static final String LOGIN = PREFIX + "login";
      public static final String FORM = PREFIX + "form";
    }

    public class Exercises {
      private static final String PREFIX = "exercises-layout__";
      public static final String STATUS_READY = PREFIX + "status-ready";
      public static final String NAME = PREFIX + "name";
      public static final String DETAIL = PREFIX + "detail";
      public static final String GAME_INFO = PREFIX+"game-info";
      public static final String CARD = PREFIX + "card";
    }
  }

  public class Routes {
    public static final String DASHBOARD = "dashboard";
    public static final String EXERCISES = "exercises";
    public static final String HOME = "home";
    public static final String ADMIN = "admin";
    public static final String LOGIN = "";
  }

  public class Title {
    public static final String ADMIN = "Crecer Juntos Admin";
  }
}
