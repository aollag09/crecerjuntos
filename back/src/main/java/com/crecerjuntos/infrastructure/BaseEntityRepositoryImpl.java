package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.BaseEntity;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DataBaseException;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

public class BaseEntityRepositoryImpl {

    public EntityManager getEntityManager() {
        return em;
    }

    private EntityManager em;

    public BaseEntityRepositoryImpl(EntityManager em) {
        this.em = em;
    }

    public BaseEntity save(BaseEntity entity) throws DataBaseException{
        EntityTransaction tr = em.getTransaction();
        try {
            if(!tr.isActive())
                tr.begin();

            if (entity.getId() == null) {
                em.persist(entity);
            } else {
                entity = em.merge(entity);
            }
            tr.commit();
            return entity;
        }
        catch (Exception e) {
            tr.rollback();
            throw new DataBaseException(e.getMessage(), e.getCause());
        }
    }

    public void delete(BaseEntity entity) throws DataBaseException {
        EntityTransaction tr = em.getTransaction();
        try {
            if (!tr.isActive())
                tr.begin();

            if (em.contains(entity)) {
                em.remove(entity);
            }
            em.getTransaction().commit();
        }
        catch (Exception e) {
            tr.rollback();
            throw new DataBaseException(e.getMessage(), e.getCause());
        }

    }

}
