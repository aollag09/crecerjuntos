package com.crecerjuntos.front.view;

import com.crecerjuntos.model.Section;
import com.crecerjuntos.model.Student;
import com.crecerjuntos.model.base.IAuthoringServices;
import com.crecerjuntos.model.base.IStudentAccess;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.KeyNotifier;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.Binder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;

public class StudentDetails extends VerticalLayout implements KeyNotifier {

	private Logger logger = LoggerFactory.getLogger(StudentDetails.class) ;
    private final IAuthoringServices authoringService;
    private final IStudentAccess studentAccess;

    // Currently modified student
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


    public StudentDetails(IStudentAccess studentAccess, IAuthoringServices authoringService){
        this.authoringService = authoringService;
        this.studentAccess = studentAccess;

        // Put section combo box
		section.setItemLabelGenerator(Section::getName);
		section.setItems(Arrays.asList(Section.values()));
        
		add(name, mail, section, password, actions);

		// bind fields
		binder.bindInstanceFields(this);

//		binder.forField(name)
//				.bind(Student::getName, Student::setName);
//
//		binder.forField(mail)
//				.bind(Student::getMail, Student::setMail);
//
//		binder.forField(password)
//				.bind(Student::getPassword, Student::setPassword);

		// Bind section with enum converter
//		binder.forField(section)
//				.withConverter(Section::fromString, Section::getName, "Please use a defined section")
//				.bind(Student::getSection, Student::setSection);

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
    	logger.info("Saving student " + student);
		authoringService.add(student);
		changeHandler.onChange();
	}

	public interface ChangeHandler {
		void onChange();
	}

	public final void editStudent(Student s) {
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

	public void setChangeHandler(ChangeHandler handler) {
		// ChangeHandler is notified when either save or delete
		// is clicked
		changeHandler = handler;
	}



}