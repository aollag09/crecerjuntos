package com.crecerjuntos.front.view.chart;

import com.vaadin.flow.component.Tag;
import com.vaadin.flow.component.dependency.HtmlImport;
import com.vaadin.flow.component.polymertemplate.EventHandler;
import com.vaadin.flow.component.polymertemplate.PolymerTemplate;
import com.vaadin.flow.templatemodel.TemplateModel;

@Tag("example-web-template")
@HtmlImport("templates/ExampleWebTemplate.html")
public class ExampleWebTemplate extends PolymerTemplate<ExampleWebTemplate.ExampleWebTemplateModel> {

    public ExampleWebTemplate() {
        getModel().setCaption("Hello template!");
    }

    @EventHandler
    private void sayHello() {
        getModel().setCaption("You clicked, how can I help you?");
    }

    public interface ExampleWebTemplateModel extends TemplateModel {
        void setCaption(String greeting);
    }
}
