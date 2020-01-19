package com.crecerjuntos.services;

import com.crecerjuntos.infrastructure.AchievementRepository;
import com.crecerjuntos.infrastructure.StudentRepository;
import com.crecerjuntos.model.Achievement;
import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService implements IStudentAccess {

    @Autowired
    StudentRepository studentRepository;

    @Override
    public Student byName(String name) {
        return studentRepository.findByName(name);
    }

    @Override
    public Student byId(Long id) {
        return studentRepository.findById(id).orElse(null);
    }

    @Override
    public List<Student> search(String name) {
        return studentRepository.findByPartialName(name);
    }

    @Override
    public List<Student> getStudents(Section section) {
        return studentRepository.findStudentsBySection(section.getId());
    }

    @Override
    public Student getStudent(Achievement achievement) {
        //TODO: Remove from this interface ?
        return achievement.getStudent();
    }

    public Student add(Student student){
        return studentRepository.save(student);
    }

    public void remove(Student student){
        studentRepository.delete(student);
    }
}
