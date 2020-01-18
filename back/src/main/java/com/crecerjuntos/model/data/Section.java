package com.crecerjuntos.model.data;

import com.google.common.base.Objects;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Section {

    /** Unique, private & generated id*/
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String id;

    /** Public name of the section aka class */
    @Column
    private String name;

    public Section(){
        this("0", "Default Section");
    }

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

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }
}
