package com.crecerjuntos.model.base;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DatabaseException;

public interface IAuthoringServices {

  void add(final Student student) throws DatabaseException;

  void remove(final Student student) throws DatabaseException;

  void add(final Achievement achievement) throws DatabaseException;

  void remove(final Achievement achievement) throws DatabaseException;

  void add(final Star star) throws DatabaseException;

  void remove(final Star star) throws DatabaseException;
}
