package com.crecerjuntos.services;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DataBaseException;
import org.junit.Test;

import javax.xml.crypto.Data;
import java.util.Calendar;

public class DatabaseErrorManagementTest {

  @Test(expected = DataBaseException.class)
  public void test_delete_non_existing() throws DataBaseException {
    Student student1 = new Student("Unexisting");
    TestServices.authoringServices.add(student1);
    TestServices.authoringServices.remove(student1);
    TestServices.authoringServices.remove(student1);
  }

  @Test(expected =  DataBaseException.class)
  public void test_delete_not_added() throws DataBaseException {
    Student not_added = new Student ("Peter");
    TestServices.authoringServices.remove(not_added);
  }

  @Test(expected = DataBaseException.class)
  public void test_create_existing_student() throws Exception {
    Student test = TestServices.generateTestStudent();
    Student sameStudent =
        new Student(
            test.getName(), test.getMail(), test.getPassword(), test.getSection());
    TestServices.authoringServices.add(sameStudent);
  }

  @Test(expected = DataBaseException.class)
  public void test_start_non_existing_user() throws Exception {
    TestServices.authoringServices.add(
        new Achievement(
            new Student(),
            "session",
            new java.sql.Date(Calendar.getInstance().getTime().getTime()),
            "exo",
            0,
            100,
            0));
  }

  @Test
  public void test_transaction_closed_on_failed_student() throws Exception {
    // Generate error
    try {
      TestServices.authoringServices.remove(new Student());
    } catch (DataBaseException e) {
      // That is ok
    }

    // Database is still up ?
    TestServices.generateTestStudent();
  }

  @Test
  public void test_transaction_closed_on_failed_achievement() throws Exception {
    // Generate error
    try {
      TestServices.authoringServices.add(
              new Achievement(
                      new Student(),
                      "session",
                      new java.sql.Date(Calendar.getInstance().getTime().getTime()),
                      "exo",
                      0,
                      100,
                      0));
    } catch (DataBaseException e) {
      // That is ok
    }

    // Database is still up ?
    TestServices.generateTestStudent();
  }
}
