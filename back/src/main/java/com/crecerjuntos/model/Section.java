package com.crecerjuntos.model;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public enum Section {
  PRIMARIO("Primario"),
  SECONDARIO("Secondario"),
  TERCERO("Tercero"),
  QUARTO("Quarto"),
  QUINTO("Quinto"),
  SEXTO("Sexto"),
  SEPTIMO("Septimo"),
  OCTAVO("Octavo"),
  NOVEMO("Novemo"),
  PROCESSO_BASICO("Processo Basico"),
  ACCELERATION("Acceleration");

  private String name;

  Section(final String name) {
    this.name = name;
  }

  public String getName() {
    return this.name;
  }

  public static List<String> list() {
    List<Section> list = Arrays.asList(Section.values());
    return list.stream().map(section -> section.getName()).collect(Collectors.toList());
  }
}



/**import com.google.common.base.Objects;

import javax.persistence.*;

@Entity
public class Section {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

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
}**/
