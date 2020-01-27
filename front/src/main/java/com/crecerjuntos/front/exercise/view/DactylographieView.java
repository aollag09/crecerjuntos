package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.data.Dactylographie;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.ProgressServices;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.value.ValueChangeMode;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

import java.util.List;

@Route(value = Constants.Route.DACTYLOGRAPHIE, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class DactylographieView extends AbstractExerciseView {

  private static final int NB_ROUNDS = 20;

  private int counter, mistake, success;
  private String current;
  private List<String> words;

  private Text model;
  private TextField textField;

  public DactylographieView() {
    super(ExerciseEnum.DACTYLOGRAPHIE.get());
  }

  private void next() {
    counter++;
    textField.setValue("");
    if (counter >= NB_ROUNDS) endGame();
    else {
      newWord();
    }
  }

  private void newWord() {
    int id = random.nextInt(words.size());
    current = words.remove(id);
    model.setText(current);
  }

  private void endGame() {

    // update ui
    ProgressServices.end(exercise, level, score.getScore());
  }


  @Override
  protected void onStart() {
    counter = 0;
    words = ((Dactylographie) exercise).getWords(level);

    VerticalLayout content = new VerticalLayout();
    content.addClassName(Constants.ClassStyle.Dactylographie.CONTENT);

    Div modelDiv = new Div();
    modelDiv.addClassName(Constants.ClassStyle.Dactylographie.MODEL);
    model = new Text("");
    modelDiv.add(model);
    content.add(modelDiv);

    textField = new TextField();
    textField.addClassName(Constants.ClassStyle.Dactylographie.TEXT_FIELD);
    content.add(textField);
    textField.setValueChangeMode(ValueChangeMode.EAGER);
    textField.setAutoselect(true);

    textField.addValueChangeListener(
        event -> {
          String value = event.getValue();
          if (!current.startsWith(value)) {
            textField.setInvalid(true);
            mistake++;
          } else {
            textField.setInvalid(false);
            if (current.equals(value)) {
              success++;
              next();
            }
          }
        });

    add(content);
    next();
  }
}
