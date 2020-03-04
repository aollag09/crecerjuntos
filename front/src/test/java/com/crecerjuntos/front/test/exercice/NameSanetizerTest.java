package com.crecerjuntos.front.test.exercise;

import com.crecerjuntos.front.util.NameSanetizer;
import org.junit.Assert;
import org.junit.Test;

public class NameSanetizerTest {

  @Test
  public void test_sanetizer() {
    Assert.assertEquals("Michael Jordan", NameSanetizer.sanetize("michael jordan"));
    Assert.assertEquals("Michael Jordan", NameSanetizer.sanetize("Michael jordan"));
    Assert.assertEquals("Michael Jordan", NameSanetizer.sanetize("michael Jordan"));
    Assert.assertEquals("Michael Jordan", NameSanetizer.sanetize("michael   jordan"));
    Assert.assertEquals("Michael Jordan", NameSanetizer.sanetize("  michael jordan"));
    Assert.assertEquals("Michael Jordan", NameSanetizer.sanetize("michael jordan  "));
    Assert.assertEquals("Michael Jordan", NameSanetizer.sanetize("MICHAEL JORDAN"));
  }
}
