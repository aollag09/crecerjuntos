package com.crecerjuntos.services;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Position;
import com.crecerjuntos.model.Student;
import org.junit.Assert;
import org.junit.Test;

import java.sql.Timestamp;

public class AchievementPodiumTest {

  @Test
  public void test_podium() throws Exception {
    Student s1 = TestServices.generateTestStudent();
    Student s2 = TestServices.generateTestStudent();
    Student s21 = TestServices.generateTestStudent();
    Student s3 = TestServices.generateTestStudent();
    Student s4 = TestServices.generateTestStudent();
    Student s5 = TestServices.generateTestStudent();

    Timestamp date = TestServices.getTimestamp();
    final String exercise = "exercise-test-podium";
    final int level = 1;
    TestServices.authoringServices.add(
        new Achievement(s1, "session", date, exercise, level, 100, 80));
    TestServices.authoringServices.add(
        new Achievement(s1, "session", date, exercise, level, 100, 80));
    TestServices.authoringServices.add(
        new Achievement(s2, "session", date, exercise, level, 100, 70));
    TestServices.authoringServices.add(
        new Achievement(s21, "session", date, exercise, level, 100, 70));
    TestServices.authoringServices.add(
        new Achievement(s3, "session", date, exercise, level, 100, 60));
    TestServices.authoringServices.add(
        new Achievement(s4, "session", date, exercise, level, 100, 50));

    Assert.assertEquals(
        Position.FIRST, TestServices.achievementAccess.getPodium(s1, level, exercise));
    Assert.assertEquals(
        Position.SECOND, TestServices.achievementAccess.getPodium(s2, level, exercise));
    Assert.assertEquals(
        Position.SECOND, TestServices.achievementAccess.getPodium(s21, level, exercise));
    Assert.assertEquals(
        Position.THIRD, TestServices.achievementAccess.getPodium(s3, level, exercise));
    Assert.assertEquals(
        Position.OUT, TestServices.achievementAccess.getPodium(s4, level, exercise));
    Assert.assertEquals(
        Position.OUT, TestServices.achievementAccess.getPodium(s5, level, exercise));
  }
}
