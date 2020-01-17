package services;

import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Student;
import infrastructure.AchievementDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AchievementService {

    @Autowired
    private AchievementDao achievementDao;

    public List<Achievement> findByStudent(Student student) {
        return achievementDao.findByStudent(student);
    }


}
