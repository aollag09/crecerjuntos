package com.crecerjuntos.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public final class Student implements BaseEntity {

  public static final String ANONYMOUS_NAME = "Anonymous";
  public static final String ANONYMOUS_MAIL = "anonymous@gmail.com";

  /** Private generated id */
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  /** Public first name */
  @Column(nullable = false)
  private String name;

  /** Email address */
  @Column(unique = true, nullable = false)
  private String mail;

  /** Password */
  @Column(nullable = false)
  private String password;

  /** Id of the associated section */
  @Enumerated(EnumType.STRING)
  private Section section;

  public Student() {
    this(ANONYMOUS_NAME, ANONYMOUS_MAIL, "", Section.DEFAULT);
  }

  public Student(String name, String mail, String password, Section section) {
    this.name = name;
    this.mail = mail;
    this.password = password;
    this.section = section;
  }

  public Student(final String name, final Section section) {
    this.name = name;
    this.mail = ANONYMOUS_MAIL;
    this.password = "";
    this.section = section;
  }

  public Student(final String name) {
    this.name = name;
    this.mail = ANONYMOUS_MAIL;
    this.password = "";
    this.section = Section.DEFAULT;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Student student = (Student) o;
    return getId() != null ? getId().equals(student.getId()) : student.getId() == null;
  }

  @Override
  public int hashCode() {
    return getId() != null ? getId().hashCode() : 0;
  }

  @Override
  public Long getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Section getSection() {
    return section;
  }

  public void setSection(Section section) {
    this.section = section;
  }

  public String getSectionName() {
    return section.getName();
  }

  public String getMail() {
    return mail;
  }

  public void setMail(String mail) {
    this.mail = mail;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  @Override
  public String toString() {
    return "Student{"
        + "id="
        + id
        + ", name='"
        + name
        + '\''
        + ", mail='"
        + mail
        + '\''
        + ", section="
        + section
        + '}';
  }
}
