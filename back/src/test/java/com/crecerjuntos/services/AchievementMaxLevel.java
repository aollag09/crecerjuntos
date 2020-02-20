package com.crecerjuntos.services;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;
import org.junit.Test;

import java.sql.Timestamp;

import static org.junit.Assert.assertEquals;

public class AchievementMaxLevel {

  @Test
  public void get_by_section() throws Exception {
    Student s1 = TestServices.generateTestStudent();
    Student s2 = TestServices.generateTestStudent();

    Timestamp date = TestServices.getTimestamp();
    final String exercise = "exercise-test-podium-" + TestServices.random.nextLong();

    TestServices.authoringServices.add(createAchievement(s1, date, exercise, 0, 100));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, 0, 20));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, 0, 30));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, 1, 100));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, 1, 60));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, 1, 80));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, 1, 100));

    TestServices.authoringServices.add(createAchievement(s2, date, exercise, 2, 100));

    int max = TestServices.achievementAccess.getMaxLevel(s1, exercise);
    assertEquals(1, max);
    int max2 = TestServices.achievementAccess.getMaxLevel(s2, exercise);
    assertEquals(2, max2);
  }

  private Achievement createAchievement(
      Student s1, Timestamp date, String exercise, int level, int i) {
    return new Achievement(s1, "session", date, exercise, level, 100, i);
  }
}
