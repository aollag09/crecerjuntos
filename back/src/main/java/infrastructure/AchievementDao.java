package infrastructure;

import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Student;
import org.springframework.beans.factory.annotation.Autowired;


import javax.persistence.EntityManager;
import java.util.Collections;
import java.util.List;

public abstract class AchievementDao {

    @Autowired
    private EntityManager entityManager;

    public List<Achievement> findByStudent(Student student){
        //TODO: implement method
        return Collections.emptyList();
    }

}
