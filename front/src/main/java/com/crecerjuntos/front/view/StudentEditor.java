package com.crecerjuntos.front.view;

import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;
import com.crecerjuntos.model.exception.DataBaseException;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.formlayout.FormLayout;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.Binder;

import java.util.Arrays;

public class StudentEditor extends FormLayout {

    private final IAuthoringServices authoringService;
    private final IStudentAccess studentAccess;

    // Current student
    private Student student;

    // Fields to edit
    TextField name = new TextField("Name");
    TextField mail = new TextField("Email");
    ComboBox<Section> section =  new ComboBox<>("Section");

    TextField password = new TextField("Password");

    Button save = new Button("Save", VaadinIcon.CHECK.create());
    Button cancel = new Button("Cancel");
    Button delete = new Button("Delete", VaadinIcon.TRASH.create());
    HorizontalLayout actions = new HorizontalLayout(save, cancel, delete);

    Binder<Student> binder = new Binder<>(Student.class);

    private ChangeHandler changeHandler;

    public StudentEditor(IStudentAccess studentAccess, IAuthoringServices authoringService){
        this.authoringService = authoringService;
        this.studentAccess = studentAccess;

        // Put section combo box
        section.setItemLabelGenerator(Section::getName);
        section.setItems(Arrays.asList(Section.values()));

        add(name, mail, section, password, actions);

        // bind fields
        binder.bindInstanceFields(this);

        save.getElement().getThemeList().add("primary");
        delete.getElement().getThemeList().add("error");

        // wire action buttons to save, delete and reset
        save.addClickListener(e -> save());
        delete.addClickListener(e -> delete());
        cancel.addClickListener(e -> show(student));
        setVisible(false);
    }


    void delete() {
        try {
            authoringService.remove(student);
        }
        catch (DataBaseException e) {
            //TODO: Show error popup
            UI.getCurrent().navigate(Admin.class);
        }
        changeHandler.onChange();
    }

    void save() {
        try {
            authoringService.add(student);
        }
        catch (DataBaseException e){
            //TODO: Show error popup
            UI.getCurrent().navigate(Admin.class);
        }

        changeHandler.onChange();
    }

    public interface ChangeHandler {
        void onChange();
    }

    public final void show(Student s) {
        if (s == null) {
            setVisible(false);
            return;
        }
        final boolean persisted = s.getId() != null;
        if (persisted) {
            // Find fresh entity for editing
            this.student = studentAccess.byId(s.getId());
        }
        else {
            this.student = s;
        }
        cancel.setVisible(persisted);

        // Bind student properties to similarly named fields
        binder.setBean(this.student);

        setVisible(true);

        // Focus name initially
        name.focus();
    }

    public void setChangeHandler(ChangeHandler changeHandler) {
        this.changeHandler = changeHandler;
    }

}
