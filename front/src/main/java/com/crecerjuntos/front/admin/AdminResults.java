package com.crecerjuntos.front.admin;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.model.Section;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.data.provider.ListDataProvider;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

import java.util.ArrayList;
import java.util.List;

@Route(value = Constants.Route.ADMIN_RESULTS, layout = AdminAppLayout.class)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle(Constants.Title.ADMIN)
public class AdminResults extends VerticalLayout {

  public AdminResults() {
    buildLayout();
  }

  private void buildLayout() {
    add(buildSectionFilter());
  }

  private ComboBox<String> buildSectionFilter() {
    ComboBox<String> cb =
        new ComboBox<>(getTranslation(Constants.Resource.Strings.Admin.SECTION_FILTER));
    List<String> values = new ArrayList<>(Section.list());
    cb.setDataProvider(new ListDataProvider<>(values));
    cb.setValue(Section.DEFAULT.getName());
    return cb;
  }
}
