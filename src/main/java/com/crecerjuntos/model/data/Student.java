package com.crecerjuntos.model.data;

import com.google.common.base.Objects;

public class Student {

    public static final String DEFAULT_NAME = "Anonymous";

    /** Private generated id */
    private final String id;

    /** Public unique name */
    private final String name;

    /** Id of the associated section */
    private final String section;

    public Student( final String id, final String name, final String section ) {
        this.id = id;
        this.name = name;
        this.section = section;
    }

    public Student( final String id, final String name) {
        this.id = id;
        this.name = name;
        this.section = Section.DEFAULT_NAME;
    }

    public Student( final String id ){
        this.id = id;
        this.name = DEFAULT_NAME;
        this.section = Section.DEFAULT_NAME;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Student student = (Student) o;
        return Objects.equal(id, student.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSection() {
        return section;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", section='" + section + '\'' +
                '}';
    }
}


