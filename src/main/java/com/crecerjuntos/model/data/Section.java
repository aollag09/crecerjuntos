package com.crecerjuntos.model.data;

import com.google.common.base.Objects;

public class Section {

    public static final String DEFAULT_NAME = "No Section";

    /** Unique, private & generated id */
    private final String id;

    /** Public name of the section aka class */
    private final String name;

    public Section(final String id, final String name) {
        this.id = id;
        this.name = name;
    }

    public Section(final String id){
        this.id = id;
        this.name = DEFAULT_NAME;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Section section = (Section) o;
        return Objects.equal(id, section.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
