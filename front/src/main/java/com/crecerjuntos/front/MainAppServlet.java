package com.crecerjuntos.front;

import com.vaadin.flow.server.Constants;
import com.vaadin.flow.server.VaadinServlet;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

@WebServlet(
    urlPatterns = "/*",
    name = "slot",
    asyncSupported = true,
    initParams = {
      @WebInitParam(
          name = Constants.I18N_PROVIDER,
          value = "com.crecerjuntos.front.util.TranslationProvider")
    })
public class MainAppServlet extends VaadinServlet {}
