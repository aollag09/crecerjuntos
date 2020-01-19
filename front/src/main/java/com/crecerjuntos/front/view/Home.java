package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Routes.HOME, layout = MainAppLayout.class)
@PageTitle("Crecer Juntos Home")
public class Home extends VerticalLayout {

  public Home() {
    H2 title = new H2("Welcome " + LoginServices.getUserName());
    add(title);
  }
}