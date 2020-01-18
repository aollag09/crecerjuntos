package com.crecerjuntos.front;

import com.crecerjuntos.front.view.Dashboard;
import com.crecerjuntos.front.view.Exercices;
import com.crecerjuntos.front.view.Home;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.applayout.AppLayout;
import com.vaadin.flow.component.html.Anchor;
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
public class MainAppLayout extends AppLayout {

  private final Tabs menu;

  public MainAppLayout() {
    menu = buildMenu();
    addToNavbar(true, menu);
  }

  private Tabs buildMenu() {
    Tabs tabs = new Tabs();
    tabs.add(buildTabs());
    tabs.setOrientation(Tabs.Orientation.HORIZONTAL);
    return tabs;
  }

  private Tab[] buildTabs() {
    final int nbtabs = 4;
    final List<Tab> tabs = new ArrayList<>(nbtabs);
    tabs.add(buildTab(VaadinIcon.HOME, "Home", Home.class));
    tabs.add(buildTab(VaadinIcon.CLOCK, "Dashboard", Dashboard.class));
    tabs.add(buildTab(VaadinIcon.PENCIL, "Exercices", Exercices.class));
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
    return tab;
  }
}
