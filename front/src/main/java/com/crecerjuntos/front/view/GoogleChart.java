package com.crecerjuntos.front.view;

import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Tag;
import com.vaadin.flow.component.dependency.JsModule;
import com.vaadin.flow.component.dependency.NpmPackage;
import com.vaadin.flow.component.polymertemplate.PolymerTemplate;

@Tag("google-chart")
@JsModule("./src/google-chart.js")
@NpmPackage(value = "@google-web-components/google-chart", version = "3.0.4")
public class GoogleChart extends Component {

}
