package com.crecerjuntos.front.util;

public class Constants {

  public static class Session {
    public static final String USERNAME = "username";
    public static final String SECTION = "section";
  }

  public static class StyleSheet {
    public static final String CERCER_JUNTOS = "stylesheets/crecerjuntos.css";
  }

  public static class ClassStyle {

    public static class Main {
      private static final String PREFIX = "main-layout__";
      public static final String LOGO_TERESA = PREFIX + "logo-teresa";
      public static final String TABS = PREFIX + "tabs";
      public static final String TAB = PREFIX + "tab";
      public static final String SPAN = PREFIX + "span";
    }

    public static class Login {
      private static final String PREFIX = "login-layout__";
      public static final String PANEL = PREFIX + "panel";
      public static final String TERESA = PREFIX + "teresa";
      public static final String LOGIN = PREFIX + "login";
      public static final String FORM = PREFIX + "form";
    }

    public static class Exercises {
      private static final String PREFIX = "exercises-layout__";
      public static final String STATUS_READY = PREFIX + "status-ready";
      public static final String NAME = PREFIX + "name";
      public static final String DETAIL = PREFIX + "detail";
      public static final String GAME_INFO = PREFIX + "game-info";
      public static final String CARD = PREFIX + "card";
      public static final String HEADER = PREFIX + "header";
      public static final String LEVELS = PREFIX + "levels";
      public static final String LEVEL = PREFIX + "level";
      public static final String ICON = PREFIX + "icon";
      public static final String ANCHOR = PREFIX + "anchor";
    }

    public class Dactylographie {
      private static final String PREFIX = "dactylographie-layout__";
      public static final String CONTENT = PREFIX + "content";
      public static final String MODEL = PREFIX + "model";
      public static final String TEXT_FIELD = PREFIX + "text-field";
    }
  }

  public static class Route {
    public static final String DASHBOARD = "dashboard";
    public static final String EXERCISES = "exercises";
    public static final String HOME = "home";
    public static final String ADMIN = "admin";
    public static final String LOGIN = "";
    public static final String CREATE = "create";
    public static final String DACTYLOGRAPHIE = "exercise/dactylographie";
    public static final String GOALKEEPER = "exercise/goalkeeper";
    public static final String LOGOUT = "logout";
  }

  public static class Title {
    public static final String ADMIN = "Crecer Juntos Admin";
    public static final String DACTYLOGRAPHIE = "Dactylographie Exercise";
  }

  public static class Resource {
    public static final String IMG_TERESA = "resources/img/teresa.png";

    public static class Strings {

      public static final String TITLE = "app-title";

      public static class Login {
        private static final String PREFIX = "login-";
        public static final String SECTION = PREFIX + "section";
        public static final String USERNAME = PREFIX + "username";
        public static final String CREATE = PREFIX + "create";
        public static final String MAIL = PREFIX + "mail";
        public static final String LOGIN = PREFIX + "login";
        public static final String EMPTY_USERNAME = PREFIX + "error-empty-username";
        public static final String DOES_NOT_EXIST = PREFIX + "error-does-not-exists";
        public static final String ALREADY_EXIST = PREFIX + "error-already-exists";
      }

      public static class Main {
        private static final String PREFIX = "main-";
        public static final String HOME = PREFIX + "home";
        public static final String EXERCISES = PREFIX + "exercises";
        public static final String DASHBOARD = PREFIX + "dashboard";
        public static final String LOGOUT = PREFIX + "logout";
      }

      public static class Home {
        private static final String PREFIX = "home-";
        public static final String WELCOME = PREFIX + "welcome";
      }

      public static class Dashboard {
        private static final String PREFIX = "dashboard-";
        public static final String TITLE = PREFIX + "title";
      }

      public static class Exercises {
        private static final String PREXIX = "exercises-";
        public static final String TITLE = PREXIX + "title";
        public static final String LEVELS = PREXIX + "levels";
        public static final String HOURS = PREXIX + "hours";
      }
    }
  }
}
