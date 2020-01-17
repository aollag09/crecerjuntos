package com.crecerjuntos.model.base;

import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Section;
import com.crecerjuntos.model.data.Student;

import java.util.List;

public interface ISectionAccess {

    Section byName(final String name);

    Section byId(final String id);

    List<Section> search(final String name);

    Section getSection(final Student student);

    Section getSection(final Achievement achievement);

}
