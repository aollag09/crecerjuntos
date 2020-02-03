package com.crecerjuntos.model.base;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.exception.DataBaseException;

public interface IAuthoringServices {

  void add(final Student student) throws DataBaseException;

  void remove(final Student student) throws DataBaseException;

  void add(final Achievement achievement) throws DataBaseException;

  void remove(final Achievement achievement) throws DataBaseException;

  void add(final Star star) throws DataBaseException;

  void remove(final Star star) throws DataBaseException;
}
