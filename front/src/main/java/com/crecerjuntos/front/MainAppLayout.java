package com.crecerjuntos.front;

import com.crecerjuntos.front.exercise.view.error.DatabaseErrorView;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.front.view.Dashboard;
import com.crecerjuntos.front.view.Exercises;
import com.crecerjuntos.front.view.Home;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DatabaseException;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.tabs.Tab;
import com.vaadin.flow.server.PWA;
import com.vaadin.flow.server.VaadinServlet;

import java.util.ArrayList;
import java.util.List;

/*
 * Tells Vaadin to activate automatic PWA features Progressive Web Apps (PWA) combine new
 * technologies with established best practices for creating reliable, accessible, and engaging
 * experiences. They give users a native-like experience with a user friendly opt-in installation
 * flow.
 */
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
public class MainAppLayout extends CommonAppLayout {

  public MainAppLayout() {
    super();
  }

  protected Tab[] buildTabs() {
    final int nbTabs = 4;
    final List<Tab> tabs = new ArrayList<>(nbTabs);
    tabs.add(
        buildTab(
            VaadinIcon.HOME, getTranslation(Constants.Resource.Strings.Main.HOME), Home.class));
    tabs.add(
        buildTab(
            VaadinIcon.PENCIL,
            getTranslation(Constants.Resource.Strings.Main.EXERCISES),
            Exercises.class));
    tabs.add(
        buildTab(
            VaadinIcon.CLOCK,
            getTranslation(Constants.Resource.Strings.Main.DASHBOARD),
            Dashboard.class));

    final String contextPath = VaadinServlet.getCurrent().getServletContext().getContextPath();
    tabs.add(buildLogOut(contextPath));

    tabs.add(buildUserName());
    return tabs.toArray(new Tab[nbTabs]);
  }


}
