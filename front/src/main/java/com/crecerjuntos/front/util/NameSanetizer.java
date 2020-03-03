package com.crecerjuntos.front.util;

import com.google.common.base.Splitter;

import java.util.List;

public class NameSanetizer {

  public static String sanetize(final String name) {

    StringBuilder builder = new StringBuilder();
    List<String> split = Splitter.on(" ").splitToList(name.trim());
    for (int i = 0; i < split.size(); i++) {
      String word = split.get(i);
      if (word.length() > 1) {
        builder.append(word.substring(0, 1).toUpperCase());
        builder.append(word.substring(1).toLowerCase());
        builder.append(" ");
      }
    }

    return builder.toString().trim();
  }
}
