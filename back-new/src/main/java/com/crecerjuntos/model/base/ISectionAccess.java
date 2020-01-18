package com.crecerjuntos.model.base;

import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;

import java.util.List;

public interface ISectionAccess {

    Section byName(final String name);

    Section byId(final Long id);

    List<Section> search(final String name);

    Section getSection(final Student student);

    Section getSection(final Achievement achievement);

}
