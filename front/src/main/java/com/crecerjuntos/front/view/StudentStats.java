package com.crecerjuntos.front.view;

import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.base.IStudentAccess;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.IntegerField;
import com.vaadin.flow.data.binder.Binder;

public class StudentStats extends VerticalLayout {

    private final IAchievementAccess achievementAccess;
    private final IStudentAccess studentAccess;

    // Current student
    private Student student;

    Binder<Student> binder = new Binder<>(Student.class);

    IntegerField nb_achievements = new IntegerField("Number of achievements");

    public StudentStats(IAchievementAccess achievementAccess, IStudentAccess studentAccess) {
        this.achievementAccess = achievementAccess;
        this.studentAccess = studentAccess;

        add(nb_achievements);

        setVisible(false);
    }

    public void show(Student s){
        if (s != null){
            nb_achievements.setValue(achievementAccess.getDone(s).size());
        }
        setVisible(true);
    }


}
