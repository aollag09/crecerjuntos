package com.crecerjuntos.front.view.chart;

import com.vaadin.flow.component.Tag;
import com.vaadin.flow.component.dependency.HtmlImport;
import com.vaadin.flow.component.polymertemplate.PolymerTemplate;
import com.vaadin.flow.templatemodel.TemplateModel;

@Tag("pie-chart")
@HtmlImport("templates/PieChart.html")
public class GooglePieChart extends PolymerTemplate<GoogleCalendar.GoogleCalendarModel> {

    public GooglePieChart() {

    }

    public interface GooglePiechartModel extends TemplateModel {}
}
