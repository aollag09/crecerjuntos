package com.crecerjuntos.services;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;
import org.junit.Assert;
import org.junit.Test;

import java.sql.Timestamp;
import java.util.List;

import static org.junit.Assert.assertTrue;

public class AchievementFindByScoreMinMax {

  @Test
  public void get_by_section() throws Exception {
    Student s1 = TestServices.generateTestStudent();

    Timestamp date = TestServices.getTimestamp();
    final String exercise = "exercise-test-podium-" + TestServices.random.nextLong();
    final int level = 1;

    TestServices.authoringServices.add(createAchievement(s1, date, exercise, level, 100));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, level, 90));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, level, 80));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, level, 70));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, level, 60));
    TestServices.authoringServices.add(createAchievement(s1, date, exercise, level, 50));


    List<Achievement> res = TestServices.achievementAccess.get(s1, 80, 100);
    Assert.assertNotNull(res);
    Assert.assertEquals(3, res.size());


    res = TestServices.achievementAccess.get(s1, 0, 100);
    Assert.assertNotNull(res);
    Assert.assertEquals(6, res.size());


    res = TestServices.achievementAccess.get(s1, 51, 59);
    Assert.assertNotNull(res);
    Assert.assertEquals(0, res.size());
  }

  @Test
  public void get_last_by_section() throws Exception {
    Student s1 = TestServices.generateTestStudent();
    Student s2 = TestServices.generateTestStudent();

    Timestamp date = TestServices.getTimestamp();
    final String exercise = "exercise-test-podium-" + TestServices.random.nextLong();
    final int level = 1;
    Achievement a1 = createAchievement(s1, date, exercise, level, 100);
    Achievement a2 = createAchievement(s1, date, exercise, level, 20);
    Achievement a3 = createAchievement(s2, date, exercise, level, 90);

    TestServices.authoringServices.add(a1);
    TestServices.authoringServices.add(a2);
    TestServices.authoringServices.add(a3);

    List<Achievement> res = TestServices.achievementAccess.getLasts(s1.getSection(), 3);
    Assert.assertNotNull(res);
    assertTrue(res.contains(a1));
    assertTrue(res.contains(a2));
    assertTrue(res.contains(a3));
  }

  private Achievement createAchievement(
      Student s1, Timestamp date, String exercise, int level, int i) {
    return new Achievement(s1, "session", date, exercise, level, 100, i);
  }
}
