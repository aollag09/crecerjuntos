package com.crecerjuntos.front.test.exercice;

import com.crecerjuntos.front.exercice.Exercice;
import com.crecerjuntos.front.exercice.ExerciceEnum;
import org.hamcrest.CoreMatchers;
import org.junit.Assert;
import org.junit.Test;

import java.util.List;

public class ExerciceEnumTest {

  @Test
  public void get() {
    Assert.assertNotNull(ExerciceEnum.DACTYLOGRAPHIE.get());
  }

  @Test
  public void list() {
    List<Exercice> list = ExerciceEnum.list();
    Assert.assertNotNull(list);
    Assert.assertTrue(list.size() > 0);
    list.forEach(Assert::assertNotNull);
  }
}
