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
  SEXTO_1("Sexto 1"),
  SEXTO_2("Sexto 2"),
  SEPTIMO_1("Septimo 1"),
  SEPTIMO_2("Septimo 2"),
  OCTAVO_1("Octavo 1"),
  OCTAVO_2("Octavo 2"),
  NOVENO("Noveno"),
  PROCESSO_BASICO("Processo Básico"),
  ACCELERACION("Acceleración");

  private final String name;

  Section(final String name) {
    this.name = name;
  }

  public String getName() {
    return this.name;
  }

  public static List<String> list() {
    List<Section> list = Arrays.asList(Section.values());
    return list.stream().map(Section::getName).collect(Collectors.toList());
  }

  public static Section fromString(String section) {
    for (Section s : Section.values()) {
      if (s.name.equalsIgnoreCase(section)) {
        return s;
      }
    }
    return DEFAULT;
  }
}
