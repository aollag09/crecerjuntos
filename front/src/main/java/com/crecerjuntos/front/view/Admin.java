package com.crecerjuntos.front.view;

import com.crecerjuntos.front.MainAppLayout;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IStudentAccess;
import com.crecerjuntos.services.StudentService;
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
  private Grid<Student> students;

  public Admin() {
    studentAccess = new StudentService();
    add(new H2("Student List"));
    students = buildStudents();
    add(students);
  }

  private Grid<Student> buildStudents() {
    Grid<Student> grid = new Grid<>();
    grid.addColumn(Student::getName).setHeader("Name");
    grid.addColumn(Student::getSectionName).setHeader("Section");
    List<Student> studentList = studentAccess.search("");
    grid.setItems(studentList);
    return grid;
  }
}
