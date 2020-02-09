package com.crecerjuntos.front.view;

import com.vaadin.flow.component.Tag;
import com.vaadin.flow.component.dependency.HtmlImport;
import com.vaadin.flow.component.polymertemplate.PolymerTemplate;
import com.vaadin.flow.templatemodel.TemplateModel;

@Tag("calendar-chart")
@HtmlImport("templates/CalendarChart.html")
public class GoogleCalendar extends PolymerTemplate<GoogleCalendar.GoogleCalendarModel> {

  GoogleCalendar() {}

  public interface GoogleCalendarModel extends TemplateModel {}
}
