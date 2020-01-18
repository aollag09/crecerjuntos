package com.crecerjuntos.front.views;

import com.crecerjuntos.front.Constants;
import com.crecerjuntos.front.MainLayout;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

/*
 * Tells Vaadin to direct the root URL to this view. The URL parameter is optional and is derived
 * from the class name, if not given
 */
@Route(value = "dashboard", layout = MainLayout.class)
@PageTitle("Crecer Juntos Dashboard")
public class Dashboard extends VerticalLayout {

  public Dashboard() {
    initView();
  }

  private void initView() {
    String username =
        getUI().isPresent()
            ? getUI().get().getSession().getAttribute(Constants.SESSION_USERNAME).toString()
            : "";
    H2 title = new H2("Welcome " + username + "to Crecer Juntos");
    add(title);
  }
}
