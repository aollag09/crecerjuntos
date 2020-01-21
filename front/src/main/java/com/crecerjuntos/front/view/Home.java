package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;

@com.vaadin.flow.router.Route(value = Constants.Route.HOME, layout = MainAppLayout.class)
@PageTitle("Crecer Juntos Home")
@StyleSheet(Constants.StyleSheet.CERCER_JUNTOS)
public class Home extends VerticalLayout {

  public Home() {
    H2 title =
        new H2(
            getTranslation(Constants.Resource.Strings.Home.WELCOME, LoginServices.getUserName()));
    add(title);
  }
}
