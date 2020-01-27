package com.crecerjuntos.front.exercise.data;

import java.util.*;

public class Score{

    /** Details of the result */
    private Map<String, Object> KPI;

    /** Computed score, value between 0 and 100 */
    private int score;

    public Score(){
        KPI = new HashMap<>();
    }

    public void setScore( final int score){
        this.score = score;
    }

    public void addKPI( final String name, final Object value){
        KPI.put(name,value);
    }

    public int getScore(){
        return this.score;
    }

    public Map<String, Object> getKPIs(){
        return this.KPI;
    }


}