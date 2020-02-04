package com.crecerjuntos.front.view;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAchievementAccess;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import org.javatuples.Pair;

import java.util.ArrayList;
import java.util.List;

public class StudentStats extends VerticalLayout {

    private final IAchievementAccess achievementAccess;

    private List<Pair<H3, Span>> maxLevelReached;
    private List<Pair<H3, Span>> scores;

    private List<Exercise> exerciseList;

    public StudentStats(IAchievementAccess achievementAccess) {
        this.achievementAccess = achievementAccess;

        maxLevelReached = new ArrayList<>();
        scores = new ArrayList<>();

        exerciseList = ExerciseEnum.list();
        exerciseList.forEach(exercise -> {
            Pair<H3,Span> maxLevelReachedSpan = new Pair<>(new H3(exercise.getName() + " max level achieved"), new Span());
            maxLevelReached.add(maxLevelReachedSpan);

            Pair<H3, Span> exercisesScores = new Pair<>(new H3(exercise.getName() + " scores"), new Span());
            scores.add(exercisesScores);
        });

        for (int i = 0; i < exerciseList.size(); i++) {
            add(maxLevelReached.get(i).getValue0());
            add(maxLevelReached.get(i).getValue1());
            add(scores.get(i).getValue0());
            add(scores.get(i).getValue1());
        }

        setVisible(false);
    }

    public void show(Student s) {
        if (s != null) {
            for (int i = 0; i < exerciseList.size(); i++) {
                maxLevelReached.get(i).getValue1().setText(getMaxLevelReached(s, exerciseList.get(i)));
                scores.get(i).getValue1().setText(scoresList(s, exerciseList.get(i)));
            }

        }
        setVisible(true);
    }

    public String getMaxLevelReached(Student s, Exercise exercise) {
        Integer level = achievementAccess.getMaxLevel(s, exercise.getName());
        if (level != null) {
            return "Level " + level;
        } else {
            return "No level done";
        }
    }

    public String scoresList(Student student, Exercise exercise) {
        int nbLevel = exercise.getNbLevels();
        StringBuilder s = new StringBuilder();
        int levelsWithScores = 0;
        for (int level = 0; level < nbLevel; level++) {
            s.append("level").append(level).append(": ");
            Integer levelScore = achievementAccess.getBestScore(student, level, exercise.getName());
            if (levelScore != null) {
                levelsWithScores++;
                s.append(levelScore);
            }
            if (level != nbLevel - 1) s.append(", ");
        }

        if (levelsWithScores == 0) return " _ ";
        else return s.toString();
    }


}
