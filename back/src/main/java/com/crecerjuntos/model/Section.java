package com.crecerjuntos.model;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public enum Section {
  DEFAULT("Default"),
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

  public static Section fromString(String section) {
    for (Section s : Section.values()) {
      if (s.name.equalsIgnoreCase(section)) {
        return s;
      }
    }
    return null;
  }
}
