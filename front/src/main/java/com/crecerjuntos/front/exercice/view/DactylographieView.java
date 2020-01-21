package com.crecerjuntos.front.exercice.view;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.ExerciseEnum;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.value.ValueChangeMode;
import com.vaadin.flow.router.PageTitle;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

@com.vaadin.flow.router.Route(value = Constants.Route.DACTYLOGRAPHIE, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.DACTYLOGRAPHIE)
public class DactylographieView extends VerticalLayout {

  private static final int NB_ROUNDS = 20;
  private static final long SEED = System.nanoTime();
  private static final List<String> WORD_LVL1 =
      Arrays.asList(
          "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
          "s", "t", "u", "v", "w", "x", "y", "z");

  private Exercise exercise;
  private Text model;
  private TextField textField;
  private int counter, mistake, success;
  private String current;
  private Random random;
  private List<String> words;
  private UI ui;
  private long startime;

  public DactylographieView() {
    add(new H2(Constants.Title.DACTYLOGRAPHIE));
    ui = getUI().isPresent() ? getUI().get() : null;
    exercise = ExerciseEnum.DACTYLOGRAPHIE.get();
    startime = System.currentTimeMillis();

    counter = 0;
    random = new Random(SEED);
    words = new ArrayList<>(WORD_LVL1);

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
    textField.addValueChangeListener(
        event -> {
          String value = event.getValue();
          String old = event.getOldValue();
          if (!current.startsWith(value)) {
            textField.setValue(old);
            mistake++;
          } else {
            if (current.equals(value)) {
              success++;
              next();
            }
          }
        });

    add(content);
    next();
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

  private void endGame() {}

  private int computeScore() {
    return -1;
  }
}
