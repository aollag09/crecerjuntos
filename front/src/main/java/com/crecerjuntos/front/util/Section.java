package com.crecerjuntos.front.util;

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
