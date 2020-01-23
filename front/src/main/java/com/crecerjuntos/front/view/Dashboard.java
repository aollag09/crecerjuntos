package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;

/*
 * Tells Vaadin to direct the root URL to this view. The URL parameter is optional and is derived
 * from the class name, if not given
 */
@com.vaadin.flow.router.Route(value = Constants.Route.DASHBOARD, layout = MainAppLayout.class)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle("Crecer Juntos Dashboard")
public class Dashboard extends VerticalLayout {

  public Dashboard() {
    initView();
  }

  private void initView() {
    H2 title = new H2(getTranslation(Constants.Resource.Strings.Dashboard.TITLE));
    add(title);
  }
}
