package com.crecerjuntos.model;

import java.util.LinkedHashMap;
import java.util.Map;

public class Score {

  public static final int MIN_SCORE = 0;
  public static final int GOOD_SCORE = 75;
  public static final int MINIMUM_SCORE = 50;
  public static final int MAX_SCORE = 100;

  /** Details of the result */
  private Map<String, Object> KPI;

  /** Computed score, value between 0 and 100 */
  private int score;

  public Score() {
    KPI = new LinkedHashMap<>();
  }

  public void setScore(final int score) {
    int newScore = score;
    if (newScore < 0) newScore = 0;
    if (newScore > 100) newScore = 100;
    this.score = newScore;
  }

  public void addKPI(final String name, final Object value) {
    KPI.put(name, value);
  }

  public int getScore() {
    return this.score;
  }

  public Map<String, Object> getKPIs() {
    return this.KPI;
  }
}
