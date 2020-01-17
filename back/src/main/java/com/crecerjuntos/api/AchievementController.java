package com.crecerjuntos.api;

import com.crecerjuntos.model.base.IAchievementAccess;
import com.crecerjuntos.model.data.Achievement;
import com.crecerjuntos.model.data.Section;
import com.crecerjuntos.model.data.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.crecerjuntos.services.AchievementService;

import java.util.List;

@RestController
@RequestMapping("/achievements")
public class AchievementController implements IAchievementAccess {

    @Autowired
    private AchievementService achievementService;

    @Override
    @RequestMapping(value = "/student", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Achievement> get(Student student) {
        return achievementService.findByStudent(student);
    }

    @Override
    public List<Achievement> getDone(Student student) {
        return null;
    }

    @Override
    public List<Achievement> getLasts(Student student, int nbAchievement) {
        return null;
    }

    @Override
    public List<Achievement> get(Section section) {
        return null;
    }

    @Override
    public List<Achievement> getLasts(Section section, int nbAchievements) {
        return null;
    }
}
