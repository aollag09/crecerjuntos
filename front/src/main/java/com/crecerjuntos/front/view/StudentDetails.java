package com.crecerjuntos.front.view;

import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;


import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.KeyNotifier;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.Binder;

public class StudentDetails extends VerticalLayout implements KeyNotifier {

    private final IAuthoringServices authoringService;
    private final IStudentAccess studentAccess;

    // Currently modified student
    private Student student;

    // Fields to edit
    TextField name = new TextField("Name");
    TextField email = new TextField("Email");
    TextField password = new TextField("Password");

    Button save = new Button("Save", VaadinIcon.CHECK.create());
	Button cancel = new Button("Cancel");
	Button delete = new Button("Delete", VaadinIcon.TRASH.create());
	HorizontalLayout actions = new HorizontalLayout(save, cancel, delete);

	Binder<Student> binder = new Binder<>(Student.class);
	private ChangeHandler changeHandler;


    public StudentDetails(IStudentAccess studentAccess, IAuthoringServices authoringService){
        this.authoringService = authoringService;
        this.studentAccess = studentAccess;
        
		add(name, email, password, actions);

		// bind using naming convention
		binder.bindInstanceFields(this);

		// Configure and style components
		setSpacing(true);

		save.getElement().getThemeList().add("primary");
		delete.getElement().getThemeList().add("error");

		addKeyPressListener(Key.ENTER, e -> save());

		// wire action buttons to save, delete and reset
		save.addClickListener(e -> save());
		delete.addClickListener(e -> delete());
		cancel.addClickListener(e -> editStudent(student));
		setVisible(false);
    }


    void delete() {
        authoringService.remove(student);
		changeHandler.onChange();
	}

	void save() {
		authoringService.add(student);
		changeHandler.onChange();
	}

	public interface ChangeHandler {
		void onChange();
	}

	public final void editStudent(Student student) {
		if (student == null) {
			setVisible(false);
			return;
		}
		final boolean persisted = student.getId() != null;
		if (persisted) {
			// Find fresh entity for editing
			student = studentAccess.byId(student.getId());
		}
		else {
			this.student = student;
		}
		cancel.setVisible(persisted);

		// Bind student properties to similarly named fields
		binder.setBean(student);

		setVisible(true);

		// Focus name initially
		name.focus();
	}

	public void setChangeHandler(ChangeHandler handler) {
		// ChangeHandler is notified when either save or delete
		// is clicked
		changeHandler = handler;
	}



}