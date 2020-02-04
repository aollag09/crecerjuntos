package com.crecerjuntos.front.view;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.base.IStudentAccess;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.IntegerField;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.Binder;

import java.util.ArrayList;
import java.util.List;

public class StudentStats extends VerticalLayout {

    private final IAchievementAccess achievementAccess;
    private final IStudentAccess studentAccess;

    // Current student
    private Student student;

    Binder<Student> binder = new Binder<>(Student.class);

    private List<TextField> max_level_reached;
    private List<TextField> scores;

    private List<Exercise> exerciseList;

    public StudentStats(IAchievementAccess achievementAccess, IStudentAccess studentAccess) {
        this.achievementAccess = achievementAccess;
        this.studentAccess = studentAccess;

        max_level_reached = new ArrayList<>();
        scores = new ArrayList<>();

        exerciseList = ExerciseEnum.list();
        exerciseList.forEach(exercise -> {
                    max_level_reached.add(new TextField(exercise.getName()));
                    scores.add(new TextField("Exercise's scores"));
                });

        for(int i=0; i<exerciseList.size();i++){
            add(max_level_reached.get(i));
            add(scores.get(i));
        }

        setVisible(false);
    }

    public void show(Student s){
        if (s != null){
            //nb_achievements.setValue(achievementAccess.getDone(s).size());
            for(int i=0; i<exerciseList.size();i++){
                max_level_reached.get(i).setValue(maxLevelReached(s, exerciseList.get(i)));
                scores.get(i).setValue(scoresList(s, exerciseList.get(i)));
            }

        }
        setVisible(true);
    }

    public String maxLevelReached(Student s, Exercise exercise){
        Integer level = achievementAccess.getMaxLevel(s, exercise.getName());
        if (level != null){
            return "Level " + level;
        }
        else {
            return "No level done";
        }
    }

    public String scoresList(Student student, Exercise exercise){
        int nbLevel = exercise.getNbLevels();
        StringBuilder s = new StringBuilder();
        for (int level =0; level < nbLevel; level++){
            Integer levelScore = achievementAccess.getBestScore(student, level, exercise.getName());
            if (levelScore != null) s.append(levelScore).append(", ");
        }

        if (s.length() == 0) return " _ "; else return s.toString();
    }


}
