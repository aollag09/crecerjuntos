package com.crecerjuntos.infrastructure;

import com.crecerjuntos.model.Section;

public interface SectionRepository {

    Section save(Section section);

    void delete(Section section);

}
