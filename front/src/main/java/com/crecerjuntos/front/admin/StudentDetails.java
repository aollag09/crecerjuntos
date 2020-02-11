package com.crecerjuntos.front.admin;

import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;
import com.vaadin.flow.component.KeyNotifier;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StudentDetails extends HorizontalLayout implements KeyNotifier {

  private Logger logger = LoggerFactory.getLogger(StudentDetails.class);
  private final IAuthoringServices authoringService;
  private final IStudentAccess studentAccess;
  private final IAchievementAccess achievementAccess;

  // Current student
  private Student student;

  private StudentEditor studentEditor;
  private StudentStats studentStats;

  public StudentDetails(
      IAchievementAccess achievementAccess,
      IStudentAccess studentAccess,
      IAuthoringServices authoringService) {
    this.authoringService = authoringService;
    this.studentAccess = studentAccess;
    this.achievementAccess = achievementAccess;

    studentEditor = new StudentEditor(studentAccess, authoringService);
    add(studentEditor);

    studentStats = new StudentStats(achievementAccess);
    add(studentStats);
  }

  public final void showStudentsDetails(Student s) {
    studentEditor.show(s);
    studentStats.show(s);

    setVisible(true);
  }

  public StudentEditor getStudentEditor() {
    return studentEditor;
  }
}
