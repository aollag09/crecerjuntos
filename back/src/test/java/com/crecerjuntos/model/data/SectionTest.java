package com.crecerjuntos.model.data;

import org.junit.Assert;
import org.junit.Test;

public class SectionTest {

    @Test
    public void test_equals(){
        Section s1 = new Section( "id1", "sectio1");
        Section s2 = new Section( "id1", "section2");
        Section s3 = new Section( "id3", "section3");
        Assert.assertEquals(s1, s2);
        Assert.assertNotEquals(s1, s3);
        Assert.assertNotEquals(s2, s3);
    }
}
