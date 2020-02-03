package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.BaseEntity;
import com.crecerjuntos.model.exception.DatabaseException;

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

    public BaseEntity save(BaseEntity entity) throws DatabaseException {
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
            throw new DatabaseException(e.getMessage(), e.getCause());
        }
    }

    public void delete(BaseEntity entity) throws DatabaseException {
        EntityTransaction tr = em.getTransaction();
        try {
            if (!tr.isActive())
                tr.begin();

            if (em.contains(entity)) {
                em.remove(entity);
            }
            else {
                throw new Exception("Entity not known in database. Please check it has been added before.");
            }
            em.getTransaction().commit();
        }
        catch (Exception e) {
            tr.rollback();
            throw new DatabaseException(e.getMessage(), e.getCause());
        }

    }

}
