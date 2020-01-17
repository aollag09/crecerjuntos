package com.crecerjuntos.model.data;

import com.google.common.base.Objects;

import javax.persistence.*;

@Entity
@Table(name="section")
public class Section {

    /** Unique, private & generated id */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private final String id;

    /** Public name of the section aka class */
    @Column
    private final String name;

    public Section(final String id, final String name) {
        this.id = id;
        this.name = name;
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

    @Override
    public String toString() {
        return "Section{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
