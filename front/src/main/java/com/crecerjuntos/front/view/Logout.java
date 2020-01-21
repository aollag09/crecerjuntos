package com.crecerjuntos.front.view;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.LoginServices;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@com.vaadin.flow.router.Route(Constants.Route.LOGOUT)
public class Logout extends VerticalLayout {

  public static final Logger LOGGER = LoggerFactory.getLogger(Login.class);

  public Logout() {
    LoginServices.logout();

    UI.getCurrent().navigate(Login.class);
  }
}
