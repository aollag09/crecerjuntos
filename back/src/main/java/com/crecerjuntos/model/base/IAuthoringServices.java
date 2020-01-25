package com.crecerjuntos.model.base;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Star;
import com.crecerjuntos.model.Student;

public interface IAuthoringServices {

  void add(final Student student);

  void remove(final Student student);

  void add(final Achievement achievement);

  void remove(final Achievement achievement);

  void add(final Star star);

  void remove(final Star star);
}
