package com.crecerjuntos.model.data;

import com.google.common.base.Objects;

import javax.persistence.*;

@Entity
@Table(name="student")
public class Student {

    public static final String DEFAULT_NAME = "Anonymous";

    /** Private generated id */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private final String id;

    /** Public unique name */
    @Column(unique = true, nullable = false)
    private final String name;

    /** Id of the associated section */
    @ManyToOne
    @JoinColumn(columnDefinition = "varchar", name="sectionId")
    private final Section section;

    public Student() {
        this("0", DEFAULT_NAME, new Section());
    }

    public Student( final String id, final String name, final Section section ) {
        this.id = id;
        this.name = name;
        this.section = section;
    }

    public Student( final String id, final String name) {
        this.id = id;
        this.name = name;
        this.section = null;
    }

    public Student( final String id ){
        this.id = id;
        this.name = DEFAULT_NAME;
        this.section = null;
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

    public Section getSection() {
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


