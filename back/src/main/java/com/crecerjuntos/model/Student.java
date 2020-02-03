package com.crecerjuntos.model;

import com.google.common.base.Objects;

import javax.persistence.*;

@Entity
@Table(name = "student")
public class Student implements BaseEntity {

  public static final String DEFAULT_NAME = "Anonymous";
  public static final String DEFAULT_MAIL = "anonymous@gmail.com";
  public static final Student DEFAULT =
      new Student(DEFAULT_NAME, DEFAULT_MAIL, "", Section.DEFAULT);

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
    this(DEFAULT_NAME, DEFAULT_MAIL, "", Section.DEFAULT);
  }

  public Student(
      String name,
      String mail,
      String password,
      Section section) {
    this.name = name;
    this.mail = mail;
    this.password = password;
    this.section = section;
  }

  public Student(final String name, final Section section) {
    this.name = name;
    this.mail = DEFAULT_MAIL;
    this.password = null;
    this.section = section;
  }

  public Student(final String name) {
    this.name = name;
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

  public String getPassword() {
    return password;
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
