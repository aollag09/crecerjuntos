package com.crecerjuntos.front.admin.error;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.admin.Admin;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Route.ADMIN_ERROR_VIEW, layout = MainAppLayout.class)
@PageTitle(Constants.Title.TITLE)
public class AdminOperationError extends VerticalLayout {

  public AdminOperationError() {
    add(new H2(getTranslation(Constants.Resource.Strings.Errors.ADMIN_ERROR)));
    add(buildBackToAdmin());
  }

  protected Component buildBackToAdmin() {
    Button backToAdmin =
    new Button(
            getTranslation(Constants.Resource.Strings.Admin.BACK), new Icon(VaadinIcon.ENTER));
    backToAdmin.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    backToAdmin.addClickShortcut(Key.ENTER);
    backToAdmin.addClickListener(
        event -> {
          UI.getCurrent().navigate(Admin.class);
        });
    return backToAdmin;
  }
}
