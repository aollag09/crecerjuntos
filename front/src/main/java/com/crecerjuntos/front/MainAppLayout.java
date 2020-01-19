package com.crecerjuntos.front;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.view.Dashboard;
import com.crecerjuntos.front.view.Exercises;
import com.crecerjuntos.front.view.Home;
import com.vaadin.flow.component.Component;
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
@StyleSheet(Constants.StyleSheet.CERCER_JUNTOS)
public class MainAppLayout extends AppLayout {

  public MainAppLayout() {
    buildNavBar();
  }

  private void buildNavBar() {
    Image image = new Image("resources/img/teresa.png", "teresa");
    image.addClassName(Constants.ClassStyle.Main.LOGO_TERESA);
    this.addToNavbar(image);
    Span appName = new Span("Crecer Juntos");
    appName.addClassName("main-layout__span");
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
    tabs.add(buildTab(VaadinIcon.HOME, "Home", Home.class));
    tabs.add(buildTab(VaadinIcon.PENCIL, "Exercises", Exercises.class));
    tabs.add(buildTab(VaadinIcon.CLOCK, "Dashboard", Dashboard.class));
    final String contextPath = VaadinServlet.getCurrent().getServletContext().getContextPath();
    tabs.add(buildLogOut(contextPath));
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
    logout.add("Logout");
    logout.setHref(contextPath + "/logout");
    return createTab(logout);
  }

  private Tab createTab(final Component component) {
    Tab tab = new Tab(component);
    tab.addThemeVariants(TabVariant.LUMO_ICON_ON_TOP);
    tab.addClassName("main-layout__tab");
    return tab;
  }
}
