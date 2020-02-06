package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;

@com.vaadin.flow.router.Route(value = Constants.Route.HOME, layout = MainAppLayout.class)
@PageTitle(Constants.Title.TITLE)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
public class Home extends VerticalLayout {

  public Home() {
    H2 title =
        new H2(
            getTranslation(Constants.Resource.Strings.Home.WELCOME, LoginServices.getUserName()));
    add(title);
  }

  private Component buildPodiums() {
    VerticalLayout podiumLayout = new VerticalLayout();
    podiumLayout.add( new H2( getTranslation(Constants.Resource.Strings.Home.PODIUM)));
    return podiumLayout;
  }

  private static class Podium {

    private final int position;
    private final String exerciseTitle;
    private final int level;
    private final String levelTitle;

    public Podium(int position, String exerciseTitle, int level, String levelTitle) {
      this.position = position;
      this.exerciseTitle = exerciseTitle;
      this.level = level;
      this.levelTitle = levelTitle;
    }

    public int getPosition() {
      return position;
    }

    public String getExerciseTitle() {
      return exerciseTitle;
    }

    public int getLevel() {
      return level;
    }

    public String getLevelTitle() {
      return levelTitle;
    }
  }
}
