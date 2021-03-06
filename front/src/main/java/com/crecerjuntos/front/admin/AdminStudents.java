package com.crecerjuntos.front.admin;

import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;
import com.crecerjuntos.services.AchievementService;
import com.crecerjuntos.services.AuthoringService;
import com.crecerjuntos.services.StudentService;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.data.provider.ListDataProvider;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

import java.util.ArrayList;
import java.util.List;

/*
 * Tells Vaadin to direct the root URL to this view. The URL parameter is optional and is derived
 * from the class name, if not given
 */
@Route(value = Constants.Route.ADMIN, layout = AdminAppLayout.class)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle(Constants.Title.ADMIN)
public class AdminStudents extends VerticalLayout {

  private IStudentAccess studentAccess;
  private StudentDetails studentDetails;
  private ComboBox<String> sectionFilter;
  private Grid<Student> studentGrid;

  public AdminStudents() {
    studentAccess = new StudentService();
    IAuthoringServices authoringService = new AuthoringService();
    IAchievementAccess achievementAccess = new AchievementService();

    studentDetails = new StudentDetails(achievementAccess, studentAccess, authoringService);

    // Build section filter
    sectionFilter = buildSectionFilter();

    // Build students
    studentGrid = buildStudents();
    listStudents();

    // Connect selected student to editor or hide if none is selected
    studentGrid
        .asSingleSelect()
        .addValueChangeListener(
            e -> {
              if (e.getValue() != null) {
                studentDetails.setVisible(true);
                studentDetails.showStudentsDetails(e.getValue());
              } else studentDetails.setVisible(false);
            });

    // Listen changes made by the editor, refresh data from backend
    studentDetails
        .getStudentEditor()
        .setChangeHandler(
            () -> {
              studentDetails.setVisible(false);
              listStudents();
            });

    add(new H2("Student List"));
    add(sectionFilter);

    HorizontalLayout layout = new HorizontalLayout();
    studentGrid.setMinWidth("800px");
    studentGrid.setMinHeight("800px");
    studentGrid.setHeightFull();
    layout.add(studentGrid);

    studentDetails.setSizeFull();
    layout.add(studentDetails);

    add(layout);
  }

  private ComboBox<String> buildSectionFilter() {
    ComboBox<String> cb =
        new ComboBox<>(getTranslation(Constants.Resource.Strings.Admin.SECTION_FILTER));
    List<String> values = new ArrayList<>(Section.list());
    cb.setDataProvider(new ListDataProvider<>(values));
    cb.setValue(Section.DEFAULT.getName());
    cb.addValueChangeListener(
        event -> {
          listStudents();
        });
    return cb;
  }

  private Grid<Student> buildStudents() {
    Grid<Student> grid = new Grid<>();
    grid.addColumn(Student::getMail).setHeader("Mail").setAutoWidth(true);
    grid.addColumn(Student::getName).setHeader("Name").setAutoWidth(true);

    grid.setDetailsVisibleOnClick(true);
    grid.setColumnReorderingAllowed(true);

    return grid;
  }

  private void listStudents() {
    List<Student> studentList =
        studentAccess.getStudents(Section.fromString(sectionFilter.getValue()));
    studentGrid.setItems(studentList);
  }
}
