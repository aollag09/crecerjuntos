package com.crecerjuntos.front;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.front.view.Dashboard;
import com.crecerjuntos.front.view.Exercises;
import com.crecerjuntos.front.view.Home;
import com.crecerjuntos.model.Student;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.applayout.AppLayout;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.Anchor;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.tabs.Tab;
import com.vaadin.flow.component.tabs.TabVariant;
import com.vaadin.flow.component.tabs.Tabs;
import com.vaadin.flow.router.RouterLink;
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
@PWA(
    name = "Crecer Juntos Project",
    shortName = "cercer-juntos",
    startPath = "login",
    backgroundColor = "#227aef",
    themeColor = "#227aef")
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
public class MainAppLayout extends AppLayout {

  public MainAppLayout() {
    buildNavBar();
  }

  private void buildNavBar() {
    Image image = new Image(Constants.Resource.Images.IMG_TERESA, "teresa");
    image.addClassName(Constants.ClassStyle.Main.LOGO_TERESA);
    this.addToNavbar(image);
    Span appName = new Span(getTranslation(Constants.Resource.Strings.TITLE));
    appName.addClassName(Constants.ClassStyle.Main.SPAN);
    this.addToNavbar(appName);
    Tabs menu = buildMenu();
    this.addToNavbar(true, menu);
  }

  private Tabs buildMenu() {
    Tabs tabs = new Tabs();
    tabs.add(buildTabs());
    tabs.setOrientation(Tabs.Orientation.HORIZONTAL);
    tabs.addClassName(Constants.ClassStyle.Main.TABS);
    return tabs;
  }

  private Tab[] buildTabs() {
    final int nbtabs = 4;
    final List<Tab> tabs = new ArrayList<>(nbtabs);
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
    return tabs.toArray(new Tab[nbtabs]);
  }

  private Tab buildTab(VaadinIcon icon, String title, Class<? extends Component> target) {
    final RouterLink link = new RouterLink("", target);
    link.add(icon.create());
    link.add(title);
    return createTab(link);
  }

  private Tab buildLogOut(String contextPath) {
    final Anchor logout = new Anchor();
    logout.add(VaadinIcon.EXIT.create());
    logout.add(getTranslation(Constants.Resource.Strings.Main.LOGOUT));
    logout.setHref(contextPath + "/" + Constants.Route.LOGOUT);
    return createTab(logout);
  }

  private Tab buildUserName() {
    Student student = LoginServices.getStudent();
    Text studentName = new Text("");
    if (student != null) studentName.setText(student.getName());
    return createTab(studentName);
  }

  private Tab createTab(final Component component) {
    Tab tab = new Tab(component);
    tab.addThemeVariants(TabVariant.LUMO_ICON_ON_TOP);
    tab.addClassName(Constants.ClassStyle.Main.TAB);
    return tab;
  }
}
