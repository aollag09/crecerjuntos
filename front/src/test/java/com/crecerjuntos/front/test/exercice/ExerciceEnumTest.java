package com.crecerjuntos.front.test.exercise;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import org.junit.Assert;
import org.junit.Test;

import java.util.List;

public class ExerciceEnumTest {

  @Test
  public void get() {
    Assert.assertNotNull(ExerciseEnum.DACTYLOGRAPHIE.get());
  }

  @Test
  public void list() {
    List<Exercise> list = ExerciseEnum.list();
    Assert.assertNotNull(list);
    Assert.assertTrue(list.size() > 0);
    list.forEach(Assert::assertNotNull);
  }
}
