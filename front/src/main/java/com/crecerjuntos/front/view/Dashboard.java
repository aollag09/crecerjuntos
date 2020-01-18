package com.crecerjuntos.front.view;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.MainAppLayout;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.VaadinSession;

import java.util.Objects;

/*
 * Tells Vaadin to direct the root URL to this view. The URL parameter is optional and is derived
 * from the class name, if not given
 */
@Route(value = Constants.Routes.DASHBOARD, layout = MainAppLayout.class)
@PageTitle("Crecer Juntos Dashboard")
public class Dashboard extends VerticalLayout {

  public Dashboard() {
    initView();
  }

  private void initView() {
    H2 title = new H2("Dashboard");
    add(title);
  }


}
