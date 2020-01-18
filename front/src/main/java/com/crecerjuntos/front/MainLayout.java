package com.crecerjuntos.front;

import com.crecerjuntos.front.views.Dashboard;
import com.crecerjuntos.front.views.Exercices;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.dependency.CssImport;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.Header;
import com.vaadin.flow.component.html.Label;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.page.Viewport;
import com.vaadin.flow.router.RouterLayout;
import com.vaadin.flow.router.RouterLink;
import com.vaadin.flow.theme.Theme;
import com.vaadin.flow.theme.lumo.Lumo;

/* Define the default theme of the application */
@Theme(Lumo.class)
/* Import custom style sheet */
@CssImport("stylesheets/shared-styles.css")
@Viewport("width=device-width, minimum-scale=1.0, initial-scale=1.0, user-scalable=yes")
public class MainLayout extends Div implements RouterLayout {

  public MainLayout() {

    Header header = new Header();
    Label title = new Label("Crecer Juntos");
    title.addClassName("main-layout__header-title");

    RouterLink dashboard = new RouterLink(null, Dashboard.class);
    dashboard.add(new Icon(VaadinIcon.HOME), new Text("  Home"));
    dashboard.addClassName("main-layout__nav-item");

    RouterLink exercices = new RouterLink(null, Exercices.class);
    exercices.add(new Icon(VaadinIcon.PENCIL), new Text("  Exercices"));
    exercices.addClassName("main-layout__nav-item");

    header.add(title, dashboard, exercices);
    header.addClassName("main-layout__header");
    add(header);

    addClassName("main-layout");
  }
}
