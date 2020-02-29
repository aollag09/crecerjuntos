package com.crecerjuntos.front.util;

public class Constants {

  public static class Session {
    public static final String STUDENT = "student";
    public static final String SCORE = "score";
  }

  public static class StyleSheet {
    public static final String CRECER_JUNTOS = "stylesheets/crecerjuntos.css";
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
      public static final String BLUE = PREFIX + "blue";
      public static final String GREY = PREFIX + "grey";
      public static final String GREEN = PREFIX + "green";
      public static final String ORANGE = PREFIX + "orange";
      public static final String RED = PREFIX + "red";
      public static final String ANCHOR = PREFIX + "anchor";
      public static final String INSTRUCTIONS = PREFIX + "instructions";
      public static final String START = PREFIX + "start";
      public static final String SCORE = PREFIX + "score";
      public static final String STATUS_IN_PROGRESS = PREFIX + "status-in-progress";
      public static final String STATUS_SUCCESS = PREFIX + "status-success";
      public static final String ADMIN = PREFIX + "admin";
    }

    public static class Dactylographie {
      private static final String PREFIX = "dactylographie-layout__";
      public static final String CONTENT = PREFIX + "content";
      public static final String MODEL = PREFIX + "model";
      public static final String TEXT_FIELD = PREFIX + "text-field";
    }

    public static class Word {
      private static final String PREFIX = "word-layout__";
      public static final String CONTENT = PREFIX + "content";
      public static final String TEMPLATE = PREFIX + "template";
      public static final String FORM = PREFIX + "form";
    }

    public static class FakeNews {
      private static final String PREFIX = "word-layout__";
      public static final String CONTENT = PREFIX + "content";
      public static final String QUESTION = PREFIX + "question";
      public static final String ANSWERS = PREFIX + "answers";
    }

    public static class Result {
      private static final String PREFIX = "result-layout__";
      public static final String NO_SCORE = PREFIX + "no-score";
      public static final String EXERCISES = PREFIX + "exercises";
      public static final String RESULT = PREFIX + "result";
      public static final String TITLE = PREFIX + "title";
      public static final String SCORE = PREFIX + "score";
      public static final String KPI = PREFIX + "kpi";
      public static final String SUCCEEDED = PREFIX + "succeeded";
      public static final String TO_IMPROVED = PREFIX + "to-improved";
      public static final String FAILED = PREFIX + "failed";
    }

    public static class Logout {
      private static final String PREFIX = "logout-layout__";
      public static final String LOGOUT = PREFIX + "logout";
    }

    public static class CSFirst {
      private static final String PREFIX = "cs-first-layout__";
      public static final String INSTRUCTIONS = PREFIX + "instructions";
    }

    public static class Home {
      private static final String PREFIX = "home-layout__";
      public static final String BADGE = PREFIX + "badge";
      public static final String PODIUM = PREFIX + "podium";
      public static final String SCORE = PREFIX + "score";
      public static final String EXERCISE = PREFIX + "exercise";
      public static final String PODIUMS = PREFIX + "podiums";
      public static final String NUMBERS = PREFIX + "numbers";
      public static final String NUMBER = PREFIX + "number";
      public static final String NUMBER_RED = PREFIX + "number-red";
      public static final String NUMBER_GREEN = PREFIX + "number-green";
      public static final String NUMBER_ORANGE = PREFIX + "number-orange";
      public static final String SPAN_NUMBER = PREFIX + "span-number";
      public static final String LEVEL = PREFIX + "level";
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
    public static final String GOOGLE_SEARCH = "exercise/google-search";
    public static final String WORD = "exercise/word";
    public static final String EXCEL = "exercise/excel";
    public static final String POWER_POINT = "exercise/power-point";
    public static final String CS_FIRST = "exercise/cs-first";
    public static final String FAKE_NEWS = "exercise/fakenews";
    public static final String LOGOUT = "logout";
    public static final String RESULT = "result";
    public static final String NON_EXISTING_LEVEL = "error/no-level";
    public static final String ERROR_VIEW = "error/common";
    public static final String DB_ERROR_VIEW = "error/database";
    public static final String NOT_LOGIN_ERROR_VIEW = "error/not-login";
    public static final String ADMIN_ERROR_VIEW = "error/admin";

    public static class QueryParameters {}
  }

  public static class Title {
    public static final String ADMIN = "Crecer Juntos Admin";
    public static final String TITLE = "Crecer Juntos";
  }

  public static class Exercises {
    public static final String DACTYLOGRAPHIE_NAME = "Dactylographie";
    public static final String WORD_NAME = "Word";
    public static final String EXCEL_NAME = "Excel";
    public static final String GOOGLE_SEARCH_NAME = "GoogleSearch";
    public static final String POWER_POINT_NAME = "PowerPoint";
    public static final String CS_FIRST_NAME = "CSFirst";
    public static final String FAKE_NEWS_NAME = "Fake News";
  }

  public static class Resource {

    public static class Images {
      public static final String IMG_TERESA = "resources/img/teresa.png";

      public static class Badges {
        public static final String GOLD_MEDAL = "resources/img/badge/011-gold-medal-4.png";
        public static final String SILVER_MEDAL = "resources/img/badge/010-silver-medal-3.png";
        public static final String BRONZE_MEDAL = "resources/img/badge/009-bronze-medal-3.png";
      }
    }

    public static class Templates {
      public static class Word {
        public static final String LEVEL1 = "template/word-kitchen.docx";
        public static final String LEVEL2 = "template/word-cv.docx";
      }
    }

    public static class Strings {

      public static final String TITLE = "app-title";

      public static class Admin {
        public static final String PREFIX = "admin-";
        public static final String BACK = PREFIX + "back-to";
        public static final String SECTION_FILTER = PREFIX + "section-filter";
      }

      public static class Login {
          private static final String PREFIX = "login-";
        public static final String SECTION = PREFIX + "section";
        public static final String USERNAME = PREFIX + "username";
        public static final String CREATE = PREFIX + "create";
        public static final String MAIL = PREFIX + "mail";
        public static final String PASSWORD = PREFIX + "password";
        public static final String CONFIRM_PASSWORD = PREFIX + "confirm-password";
        public static final String LOGIN = PREFIX + "login";
        public static final String ANONYMOUS = PREFIX + "anonymous";
        public static final String EMPTY_USERNAME = PREFIX + "error-empty-username";
        public static final String DOES_NOT_EXIST = PREFIX + "error-does-not-exists";
        public static final String ALREADY_EXIST = PREFIX + "error-already-exists";
        public static final String WRONG_MAIL = PREFIX + "error-wrong-email";
        public static final String EMPTY_MAIL = PREFIX + "error-empty-email";
        public static final String EMPTY_PASSWORD = PREFIX + "error-empty-password";
        public static final String NOT_SAME_PASSWORDS = PREFIX + "error-not-same-passwords";
        public static final String WRONG_PASSWORD = PREFIX + "error-wrong-password";
      }

      public static class Main {
        private static final String PREFIX = "main-";
        public static final String HOME = PREFIX + "home";
        public static final String EXERCISES = PREFIX + "exercises";
        public static final String DASHBOARD = PREFIX + "dashboard";
        public static final String LOGOUT = PREFIX + "logout";
      }

      public static class ScoreKPI {
        private static final String PREFIX = "score-kpi-";
        public static final String DURATION = PREFIX + "duration";
        public static final String MISTAKES = PREFIX + "mistakes";
        public static final String SUCCESS = PREFIX + "success";
        public static final String LONGEST_SEQUENCE = PREFIX + "longest-sequence";
      }

      public static class Home {
        private static final String PREFIX = "home-";
        public static final String WELCOME = PREFIX + "welcome";
        public static final String PODIUM_TITLE = PREFIX + "podium-title";
        public static final String SUMMARY_TITLE = PREFIX + "summary-title";
        public static final String SECTION_PODIUM_TITLE = PREFIX + "podium-section-title";
      }

      public static class Dashboard {
        private static final String PREFIX = "dashboard-";
        public static final String TITLE = PREFIX + "title";
      }

      public static class Exercises {
        private static final String PREFIX = "exercises-";
        public static final String TITLE = PREFIX + "title";
        public static final String LEVELS = PREFIX + "levels";
        public static final String LEVEL = PREFIX + "level";
        public static final String HOURS = PREFIX + "hours";
        public static final String START = PREFIX + "start";
        public static final String READY = PREFIX + "ready";
        public static final String IN_PROGRESS = PREFIX + "in-progress";
        public static final String DONE = PREFIX + "done";
        public static final String ADMIN_PASSWORD = PREFIX + "admin-password";
        public static final String VALIDATE = PREFIX + "validate";
      }

      public static class Errors {
        private static final String PREFIX = "error-";
        public static final String NON_EXISTING_LEVEL = PREFIX + "non-existing-level";
        public static final String ERROR = PREFIX + "common";
        public static final String DB_ERROR = PREFIX + "db-error";
        public static final String ADMIN_ERROR = PREFIX + "admin";
        public static final String NOT_LOGIN_ERROR = PREFIX + "not-login";
      }

      public static class Template {
        private static final String PREFIX = "template-";
        public static final String DOWNLOAD = PREFIX + "download";
      }

      public static class Dactylographie {
        private static final String PREFIX = "dactylographie-";
        public static final String TITLE = PREFIX + "title";
        public static final String NAME = "dactylographie";
        public static final String LVL1_NAME = PREFIX + "level1-name";
        public static final String LVL2_NAME = PREFIX + "level2-name";
        public static final String LVL3_NAME = PREFIX + "level3-name";
        public static final String LVL4_NAME = PREFIX + "level4-name";
        public static final String LVL5_NAME = PREFIX + "level5-name";
        public static final String LVL6_NAME = PREFIX + "level6-name";
        public static final String LVL7_NAME = PREFIX + "level7-name";
        public static final String INSTRUCTIONS = PREFIX + "instructions";
      }

      public static class Word {
        private static final String PREFIX = "word-";
        public static final String TITLE = PREFIX + "title";
        public static final String LVL1_NAME = PREFIX + "level1-name";
        public static final String LVL2_NAME = PREFIX + "level2-name";
        public static final String LVL3_NAME = PREFIX + "level3-name";
        public static final String LVL4_NAME = PREFIX + "level4-name";
        public static final String INSTRUCTIONS = PREFIX + "instructions";
        public static final String STEP_1_1 = PREFIX + "step1.1";
        public static final String STEP_1_2 = PREFIX + "step1.2";
        public static final String STEP_1_3 = PREFIX + "step1.3";
        public static final String STEP_1_4 = PREFIX + "step1.4";
        public static final String STEP_1_5 = PREFIX + "step1.5";
        public static final String STEP_2_1 = PREFIX + "step2.1";
        public static final String STEP_2_2 = PREFIX + "step2.2";
        public static final String STEP_2_3 = PREFIX + "step2.3";
        public static final String STEP_2_4 = PREFIX + "step2.4";
        public static final String STEP_2_5 = PREFIX + "step2.5";
      }

      public static class Excel {
        private static final String PREFIX = "excel-";
        public static final String TITLE = PREFIX + "title";
        public static final String LVL1_NAME = PREFIX + "level1-name";
        public static final String LVL2_NAME = PREFIX + "level2-name";
        public static final String LVL3_NAME = PREFIX + "level3-name";
        public static final String INSTRUCTIONS = PREFIX + "instructions";
      }

      public static class PowerPoint {
        private static final String PREFIX = "power-point-";
        public static final String TITLE = PREFIX + "title";
        public static final String LVL1_NAME = PREFIX + "level1-name";
        public static final String LVL2_NAME = PREFIX + "level2-name";
        public static final String LVL3_NAME = PREFIX + "level3-name";
        public static final String INSTRUCTIONS = PREFIX + "instructions";
      }

      public static class GoogleSearch {
        private static final String PREFIX = "google-search-";
        public static final String TITLE = PREFIX + "title";
        public static final String INSTRUCTIONS = PREFIX + "instructions";
      }

      public static class FakeNews {
        private static final String PREFIX = "fake-news-";
        public static final String NAME = "fake-news";
        public static final String TITLE = PREFIX + "title";
        public static final String INSTRUCTIONS = PREFIX + "instructions";
        public static final String LVL1_NAME = PREFIX + "level1-name";
      }

      public static class Result {
        private static final String PREFIX = "result-";
        public static final String NO_SCORE = PREFIX + "no-score";
        public static final String EXERCISES = PREFIX + "exercises";
        public static final String SUCCEEDED = PREFIX + "succeeded";
        public static final String SCORE = PREFIX + "score";
        public static final String FAILED = PREFIX + "failed";
        public static final String TO_IMPROVE = PREFIX + "to-improve";
      }

      public static class Logout {
        private static final String PREFIX = "logout-";
        public static final String TITLE = PREFIX + "title";
        public static final String SUCCESSFULLY_LOGOUT = PREFIX + "successfully-logout";
        public static final String LOGIN = PREFIX + "login";
        public static final String LOGOUT = PREFIX + "logout";
      }

      public static class CSFirst {
        private static final String PREFIX = "cs-first-";
        public static final String LVL1_NAME = PREFIX + "level1-name";
        public static final String LVL2_NAME = PREFIX + "level2-name";
        public static final String LVL3_NAME = PREFIX + "level3-name";
        public static final String INSTRUCTIONS = PREFIX + "instructions";
        public static final String INSTRUCTION = PREFIX + "instruction";
        public static final String GO = PREFIX + "go";
        public static final String TITLE = PREFIX + "title";
      }
    }
  }

  public static final String ADMIN_PASSWORD = "teresa";
}
