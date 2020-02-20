package com.crecerjuntos.front.admin;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.view.chart.GoogleCalendar;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Route.ACTIVITY, layout = MainAppLayout.class)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle(Constants.Title.ADMIN)
public class Activity extends VerticalLayout {

  public Activity() {
    add(new H2("GOOGLE CHART"));
    add(new GoogleCalendar());
  }


}
