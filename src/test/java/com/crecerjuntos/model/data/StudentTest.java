package com.crecerjuntos.model.data;

import org.junit.Assert;
import org.junit.Test;

public class StudentTest {

    @Test
    public void test_equals() {
        Student s1 = new Student("id", "name1", "c1");
        Student s2 = new Student("id", "name2", "c2");
        Student s3 = new Student("id3", "name1", "c1");
        Assert.assertEquals(s1, s2);
        Assert.assertNotEquals(s1, s3);
        Assert.assertNotEquals(s2, s3);
    }

    @Test
    public void test_default_values() {
        Student s1 = new Student("id1");
        Assert.assertEquals(s1.getName(), Student.DEFAULT_NAME);
        Assert.assertEquals(s1.getSection(), Section.DEFAULT_NAME);

        Student s2 = new Student("id1", "toto");
        Assert.assertEquals(s2.getSection(), Section.DEFAULT_NAME);
    }

}