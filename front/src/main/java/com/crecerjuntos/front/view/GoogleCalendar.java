package com.crecerjuntos.front.view;

import com.vaadin.flow.component.Tag;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.dependency.HtmlImport;
import com.vaadin.flow.component.dependency.JavaScript;
import com.vaadin.flow.component.polymertemplate.PolymerTemplate;
import com.vaadin.flow.templatemodel.TemplateModel;

@Tag("calendar-chart")
@JavaScript("https://www.gstatic.com/charts/loader.js")
@HtmlImport("templates/CalendarChart.html")
public class GoogleCalendar extends PolymerTemplate<GoogleCalendar.GoogleCalendarModel> {

  GoogleCalendar() {

  }

  public interface GoogleCalendarModel extends TemplateModel {}
}
