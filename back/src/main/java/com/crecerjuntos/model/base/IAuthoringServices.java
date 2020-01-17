package com.crecerjuntos.model.base;

import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Section;
import com.crecerjuntos.model.data.Student;
import com.crecerjuntos.model.data.Star;

public interface IAuthoringServices{

    void add( final Student student );
    
    void remove( final Student student );
    
    void add( final Section section );

    void remove( final Section section );

    void add( final Achievement achievement );

    void remove( final Achievement achievement );

    void add( final Star star );
    
    void remove( final Star star );
    
}