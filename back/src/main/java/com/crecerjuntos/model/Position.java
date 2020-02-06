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

  public int toIncreasingInt() {
    switch (this) {
      case FIRST:
        return 1;
      case SECOND:
        return 2;
      case THIRD:
        return 3;
      case OUT:
        return 4;
    }
    return 5;
  }
}
