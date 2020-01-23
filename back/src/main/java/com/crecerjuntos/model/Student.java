package com.crecerjuntos.model;

import com.google.common.base.Objects;

import javax.persistence.*;

@Entity
@Table(name = "student")
public class Student {

  public static final String DEFAULT_NAME = "Anonymous";

  public static final String DEFAULT_MAIL = null;

  /** Private generated id */
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private final Long id;

  /** Public first name */
  @Column(nullable = false)
  private final String name;

  /** Email address */
  @Column(unique = true, nullable = false)
  private final String mail;

  /** Password */
  @Column(nullable = false)
  private final String password;


  /** Id of the associated section */
  @Enumerated(EnumType.STRING)
  private final Section section;

  public Student() {
    this(0L, DEFAULT_NAME, Section.DEFAULT);
  }

  public Student(final Long id, final String name, final String mail, final String password, final Section section) {
    this.id = id;
    this.name = name;
    this.mail = mail;
    this.password = password;
    this.section = section;
  }

  public Student(final Long id, final String name, final Section section) {
    this.id = id;
    this.name = name;
    this.mail = DEFAULT_MAIL;
    this.password = null;
    this.section = section;
  }

  public Student(final Long id, final String name) {
    this.id = id;
    this.name = name;
    this.mail = DEFAULT_MAIL;
    this.password = null;
    this.section = Section.DEFAULT;
  }

  public Student(final Long id) {
    this.id = id;
    this.name = DEFAULT_NAME;
    this.mail = DEFAULT_MAIL;
    this.password = null;
    this.section = Section.DEFAULT;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Student student = (Student) o;
    return Objects.equal(id, student.id);
  }

  @Override
  public int hashCode() {
    return Objects.hashCode(id);
  }

  public Long getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public Section getSection() {
    return section;
  }

  public String getSectionName() {
    return section.getName();
  }

  public String getMail() {
    return mail;
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
