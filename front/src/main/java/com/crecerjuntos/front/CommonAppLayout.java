package com.crecerjuntos.front;

import com.crecerjuntos.front.exercise.view.error.DatabaseErrorView;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.crecerjuntos.front.view.Home;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DatabaseException;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.applayout.AppLayout;
import com.vaadin.flow.component.html.Anchor;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.tabs.Tab;
import com.vaadin.flow.component.tabs.TabVariant;
import com.vaadin.flow.component.tabs.Tabs;
import com.vaadin.flow.router.RouterLink;
import com.vaadin.flow.server.PWA;

@PWA(
        name = "Crecer Juntos Project",
        shortName = "cercer-juntos",
        startPath = "login",
        backgroundColor = "#227aef",
        themeColor = "#227aef")
public abstract class CommonAppLayout extends AppLayout {

  public CommonAppLayout() {
    super();
    buildNavBar();
  }

  private void buildNavBar() {
    Image image = new Image(Constants.Resource.Images.IMG_TERESA, "teresa");
    image.addClassName(Constants.ClassStyle.Main.LOGO_TERESA);
    image.addClickListener(
        event -> {
          UI.getCurrent().navigate(Home.class);
        });
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

  protected abstract Tab[] buildTabs();

  protected Tab createTab(final Component component) {
    Tab tab = new Tab(component);
    tab.addThemeVariants(TabVariant.LUMO_ICON_ON_TOP);
    tab.addClassName(Constants.ClassStyle.Main.TAB);
    return tab;
  }

  protected Tab buildLogOut(String contextPath) {
    final Anchor logout = new Anchor();
    logout.add(VaadinIcon.EXIT.create());
    logout.add(getTranslation(Constants.Resource.Strings.Main.LOGOUT));
    logout.setHref(contextPath + "/" + Constants.Route.LOGOUT);
    return createTab(logout);
  }

  protected Tab buildTab(VaadinIcon icon, String title, Class<? extends Component> target) {
    final RouterLink link = new RouterLink("", target);
    link.add(icon.create());
    link.add(title);
    return createTab(link);
  }

  protected Tab buildUserName() {
    Student student = null;
    try {
      student = LoginServices.getStudent();
    } catch (DatabaseException e) {
      UI.getCurrent().navigate(DatabaseErrorView.class);
    }
    Text studentName = new Text(getTranslation(Constants.Resource.Strings.Login.NOT_LOGIN));
    if (student != null) studentName.setText(student.getName());
    return createTab(studentName);
  }
}
