package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;

import javax.persistence.EntityManager;

public class SectionRepositoryImpl implements SectionRepository {

    private EntityManager em;

    public SectionRepositoryImpl(EntityManager em) {
        this.em = em;
    }

    public Section save(Section section){
        em.getTransaction().begin();
        if (section.getId() == null){
            em.persist(section);
        }
        else {
            section = em.merge(section);
        }
        em.getTransaction().commit();
        return section;
    }

    public void delete(Section section) {
        if (em.contains(section)){
            em.remove(section);
        }
    }
}
