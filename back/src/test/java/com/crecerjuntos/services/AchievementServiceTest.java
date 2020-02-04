package com.crecerjuntos.services;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;
import org.junit.Assert;
import org.junit.Test;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

public class AchievementServiceTest {

  @Test
  public void create() throws Exception {
    Student student = TestServices.generateTestStudent();

    Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
    double progress = TestServices.random.nextInt(100);
    Achievement achievement =
        new Achievement(student, "session", date, "exercise-test", 0, progress, 0);
    TestServices.authoringServices.add(achievement);

    List<Achievement> lasts = TestServices.achievementAccess.getLasts(student, 1);
    Assert.assertNotNull(lasts);
    Assert.assertEquals(1, lasts.size());
    Assert.assertNotNull(lasts.get(0));
    Assert.assertEquals(achievement.getStudent(), lasts.get(0).getStudent());
  }


  @Test
  public void getMaxLevel() throws Exception {
    Student student = TestServices.generateTestStudent();
    Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());


    Achievement achievement0 =
            new Achievement(
                    student,
                    "session",
                    date,
                    "exercise-test",
                    0,
                    100,
                    85);

    Achievement achievement1 =
            new Achievement(
                    student,
                    "session",
                    date,
                    "exercise-test",
                    1,
                    100,
                    80);

    TestServices.authoringServices.add(achievement0);
    TestServices.authoringServices.add(achievement1);

    Integer maxLevel = TestServices.achievementAccess.getMaxLevel(student, "exercise-test");
    Assert.assertEquals(Integer.valueOf(1), maxLevel);
  }

  @Test
  public void getMaxLevelNotStarted() throws Exception {
    Student student = TestServices.generateTestStudent();

    Integer maxLevel = TestServices.achievementAccess.getMaxLevel(student, "exercise-test");
    Assert.assertNull(maxLevel);
  }

  @Test
  public void getBestScore() throws Exception {
    Student student = TestServices.generateTestStudent();
    Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());

    Achievement achievement0 =
            new Achievement(
                    student,
                    "session",
                    date,
                    "exercise-test",
                    1,
                    100,
                    80);

    Achievement achievement1 =
            new Achievement(
                    student,
                    "session",
                    date,
                    "exercise-test",
                    1,
                    100,
                    70);

    TestServices.authoringServices.add(achievement0);
    TestServices.authoringServices.add(achievement1);

    Integer bestScore = TestServices.achievementAccess.getBestScore(student, 1, "exercise-test");
    Assert.assertEquals(Integer.valueOf(80), bestScore);

  }

  @Test
  public void getBestScoreLevelNotStarted() throws Exception {
    Student student = TestServices.generateTestStudent();

    Integer bestScore = TestServices.achievementAccess.getBestScore(student, 1, "exercise-test");
    Assert.assertNull(bestScore);
  }

}
