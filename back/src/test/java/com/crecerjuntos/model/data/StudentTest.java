package com.crecerjuntos.model.data;

import org.junit.Assert;
import org.junit.Test;

public class StudentTest {

    @Test
    public void test_equals() {
        Section c1 = new Section("1", "Test section");
        Section c2 = new Section("2", "Test section 2");

        Student s1 = new Student("id", "name1", c1);
        Student s2 = new Student("id", "name2", c2);
        Student s3 = new Student("id3", "name1", c1);

        Assert.assertEquals(s1, s2);
        Assert.assertNotEquals(s1, s3);
        Assert.assertNotEquals(s2, s3);
    }

    @Test
    public void test_default_values() {
        Student s1 = new Student("id1");
        Assert.assertEquals(s1.getName(), Student.DEFAULT_NAME);
        Assert.assertNull(s1.getSection());

        Student s2 = new Student("id1", "toto");
        Assert.assertNull(s2.getSection());
    }

}