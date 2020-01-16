package com.crecerjuntos.model.data;

import com.google.common.base.Objects;

public class Star {

    /** Unique, private & generated id */
    private final String id;

    /** Identifier of the student */
    private final String studentId;

    /** Name of the exercice */
    private final String exercice;

    /** Number of Stars, between 0 and 5 */
    private final int stars;

    public Star( final String id, final String studentId, final String exercice, final int stars){
        this.id = id;
        this.studentId = studentId;
        this.exercice = exercice;
        this.stars = stars;
    }


}