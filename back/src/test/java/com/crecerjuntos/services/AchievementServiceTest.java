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
  public void create() throws Exception{
    Student student = TestServices.generateTestStudent();

    Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
    double progress = TestServices.random.nextInt(100);
    Achievement achievement =
        new Achievement(
            student,
            "session",
            date,
            "exercise-test",
            0,
            progress,
            0);
    TestServices.authoringServices.add(achievement);

    List<Achievement> lasts = TestServices.achievementAccess.getLasts(student, 1);
    Assert.assertNotNull(lasts);
    Assert.assertEquals(1, lasts.size());
    Assert.assertNotNull(lasts.get(0));
    Assert.assertEquals(achievement.getStudent(), lasts.get(0).getStudent());
  }
}
