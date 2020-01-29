package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IStudentAccess;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.services.StudentService;
import com.crecerjuntos.services.AuthoringService;
import com.vaadin.flow.component.dependency.StyleSheet;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;

import java.util.List;

/*
 * Tells Vaadin to direct the root URL to this view. The URL parameter is optional and is derived
 * from the class name, if not given
 */
@com.vaadin.flow.router.Route(value = Constants.Route.ADMIN, layout = MainAppLayout.class)
@StyleSheet(Constants.StyleSheet.CRECER_JUNTOS)
@PageTitle(Constants.Title.ADMIN)
public class Admin extends VerticalLayout {

  private IStudentAccess studentAccess;
  private IAuthoringServices authoringService;
  private StudentDetails studentDetails;
  private Grid<Student> students;

  public Admin() {
    studentAccess = new StudentService();
    authoringService = new AuthoringService();
    studentDetails = new StudentDetails(studentAccess, authoringService);

    students = buildStudents();

    // Connect selected student to editor or hide if none is selected
    students.asSingleSelect().addValueChangeListener(e -> {
        studentDetails.editStudent(e.getValue());
    });

    // Listen changes made by the editor, refresh data from backend
    studentDetails.setChangeHandler(() -> {
        studentDetails.setVisible(false);
        listStudents(students);
    });

    add(new H2("Student List"));
    add(students);
    add(studentDetails);
  }

  private Grid<Student> buildStudents() {
    Grid<Student> grid = new Grid<>();
    grid.addColumn(Student::getMail).setHeader("Mail");
    grid.addColumn(Student::getName).setHeader("Name");
    grid.addColumn(Student::getSectionName).setHeader("Section");

    grid.setDetailsVisibleOnClick(true);
    grid.setColumnReorderingAllowed(true);

    listStudents(grid);

    return grid;
  }

  private void listStudents(Grid<Student> grid){
      List<Student> studentList = studentAccess.search("");
      grid.setItems(studentList);
  }

}
