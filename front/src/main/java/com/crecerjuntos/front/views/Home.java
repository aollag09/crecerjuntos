package com.crecerjuntos.front.views;

import com.crecerjuntos.front.Constants;
import com.crecerjuntos.front.MainAppLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Routes.HOME, layout = MainAppLayout.class)
@PageTitle("Crecer Juntos Home")
public class Home extends VerticalLayout {}
