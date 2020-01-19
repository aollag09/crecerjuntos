package com.crecerjuntos.model;

import com.google.common.base.Objects;

import javax.persistence.*;

@Entity
public class Section {

  /** Unique, private & generated id */
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  /** Public name of the section aka class */
  @Column private String name;

  public Section() {
    this(0L, "Default Section");
  }

  public Section(final Long id, final String name) {
    this.id = id;
    this.name = name;
  }

  public Long getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Section section = (Section) o;
    return Objects.equal(id, section.id);
  }

  @Override
  public int hashCode() {
    return Objects.hashCode(id);
  }

  @Override
  public String toString() {
    return "Section{" + "id='" + id + '\'' + ", name='" + name + '\'' + '}';
  }

  public void setId(Long id) {
    this.id = id;
  }

  public void setName(String name) {
    this.name = name;
  }
}
