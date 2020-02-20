package com.crecerjuntos.services;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Position;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import org.junit.Assert;
import org.junit.Test;

import java.sql.Timestamp;

public class AchievementSectionPodiumTest {

  @Test
  public void test_podium() throws Exception {
    Student s1 = TestServices.generateTestStudent("s1", Section.PRIMARIO);
    Student s2 = TestServices.generateTestStudent("s2", Section.PRIMARIO);
    Student s21 = TestServices.generateTestStudent("s21", Section.PRIMARIO);
    Student s3 = TestServices.generateTestStudent( "s3", Section.PRIMARIO);
    Student s4 = TestServices.generateTestStudent("s4", Section.PRIMARIO);
    Student s5 = TestServices.generateTestStudent( "s5", Section.PRIMARIO);

    Student e1 = TestServices.generateTestStudent("e1", Section.SECONDARIO);
    Student e2 = TestServices.generateTestStudent("e2", Section.SECONDARIO);

    Timestamp date = TestServices.getTimestamp();
    final String exercise = "exercise-test-podium" + TestServices.random.nextLong();;
    final int level = 1;
    TestServices.authoringServices.add(
        new Achievement(s1, "session", date, exercise, level, 100, 100));
    TestServices.authoringServices.add(
        new Achievement(s1, "session", date, exercise, level, 100, 100));
    TestServices.authoringServices.add(
        new Achievement(s2, "session", date, exercise, level, 100, 90));
    TestServices.authoringServices.add(
        new Achievement(s21, "session", date, exercise, level, 100, 90));
    TestServices.authoringServices.add(
        new Achievement(s3, "session", date, exercise, level, 100, 80));
    TestServices.authoringServices.add(
        new Achievement(s4, "session", date, exercise, level, 100, 76));

    TestServices.authoringServices.add(
            new Achievement(e1, "session", date, exercise, level, 100, 95));
    TestServices.authoringServices.add(
            new Achievement(e2, "session", date, exercise, level, 100, 85));

    Assert.assertEquals(
        Position.FIRST, TestServices.achievementAccess.getSectionPodium(s1, level, exercise));
    Assert.assertEquals(
        Position.SECOND, TestServices.achievementAccess.getSectionPodium(s2, level, exercise));
    Assert.assertEquals(
        Position.SECOND, TestServices.achievementAccess.getSectionPodium(s21, level, exercise));
    Assert.assertEquals(
        Position.THIRD, TestServices.achievementAccess.getSectionPodium(s3, level, exercise));
    Assert.assertEquals(
        Position.OUT, TestServices.achievementAccess.getSectionPodium(s4, level, exercise));
    Assert.assertEquals(
        Position.OUT, TestServices.achievementAccess.getSectionPodium(s5, level, exercise));

    Assert.assertEquals(
            Position.FIRST, TestServices.achievementAccess.getSectionPodium(e1, level, exercise));
    Assert.assertEquals(
            Position.SECOND, TestServices.achievementAccess.getSectionPodium(e2, level, exercise));

  }
}
