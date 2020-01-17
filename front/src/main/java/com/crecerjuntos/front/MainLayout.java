package com.crecerjuntos.front;

import com.crecerjuntos.front.views.Exercices;
import com.crecerjuntos.front.views.Home;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.dependency.CssImport;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.Header;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.page.Viewport;
import com.vaadin.flow.router.HighlightConditions;
import com.vaadin.flow.router.RouterLayout;
import com.vaadin.flow.router.RouterLink;
import com.vaadin.flow.theme.Theme;
import com.vaadin.flow.theme.lumo.Lumo;

/* Define the default theme of the application */
@Theme(Lumo.class)
/* Import custom style sheet */
@CssImport("./shared-styles.css")
@Viewport("width=device-width, minimum-scale=1.0, initial-scale=1.0, user-scalable=yes")
public class MainLayout extends Div implements RouterLayout {

  public MainLayout() {

    Header header = new Header();
    H2 title = new H2("Crecer Juntos");
    title.addClassName("main-layout__title");

    RouterLink home = new RouterLink(null, Home.class);
    home.add(new Icon(VaadinIcon.HOME), new Text("Home"));
    home.addClassName("main-layout__nav-item");
    // Only show as active for the exact URL, but not for sub paths
    home.setHighlightCondition(HighlightConditions.sameLocation());

    RouterLink exercices = new RouterLink(null, Exercices.class);
    exercices.add(new Icon(VaadinIcon.PENCIL), new Text("Exercices"));
    exercices.addClassName("main-layout__nav-item");

    Div navigation = new Div(home, exercices);
    navigation.addClassName("main-layout__nav");

    header.add(title, home, exercices);
    header.addClassName("main-layout__header");
    add(header);

    addClassName("main-layout");
  }
}
