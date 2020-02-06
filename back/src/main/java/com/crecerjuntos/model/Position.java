package com.crecerjuntos.model;

public enum Position {
  FIRST,
  SECOND,
  THIRD,
  OUT;

  public static Position fromInt(final int pos) {
    if (pos == 1) return FIRST;
    if (pos == 2) return SECOND;
    if (pos == 3) return THIRD;
    else return OUT;
  }
}
