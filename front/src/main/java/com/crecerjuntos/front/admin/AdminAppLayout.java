package com.crecerjuntos.front.admin;

import com.crecerjuntos.front.CommonAppLayout;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.tabs.Tab;
import com.vaadin.flow.server.VaadinServlet;

import java.util.ArrayList;
import java.util.List;

@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
public class AdminAppLayout extends CommonAppLayout {

  @Override
  protected Tab[] buildTabs() {
    final List<Tab> tabs = new ArrayList<>();
    tabs.add(
        buildTab(
            VaadinIcon.USER,
            getTranslation(Constants.Resource.Strings.Admin.USER),
            AdminStudents.class));
    tabs.add(
        buildTab(
            VaadinIcon.DIPLOMA,
            getTranslation(Constants.Resource.Strings.Admin.RESULT),
            AdminResults.class));

    final String contextPath = VaadinServlet.getCurrent().getServletContext().getContextPath();
    tabs.add(buildLogOut(contextPath));

    tabs.add(buildUserName());
    return tabs.toArray(new Tab[tabs.size()]);
  }
}
