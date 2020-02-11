package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.data.Dactylographie;
import com.crecerjuntos.front.exercise.data.Score;
import com.crecerjuntos.front.util.Constants;
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

  private int counter, mistake, success;
  private int longestSequence, currentSequence;
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
    if (counter >= Dactylographie.NB_ROUNDS) end();
    else {
      newWord();
    }
  }

  private void newWord() {
    if (words == null || words.size() <= 0) {
      try {
        words = ((Dactylographie) exercise).getWords(level);
      } catch (NonExistingLevel nonExistingLevel) {
        nonExistingLevel();
      }
    }
    int id = random.nextInt(words.size());
    current = words.remove(id);
    model.setText(current);
  }

  @Override
  protected void onStart() {
    counter = 0;
    try {
      words = ((Dactylographie) exercise).getWords(level);
    } catch (NonExistingLevel nonExistingLevel) {
      nonExistingLevel();
    }

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
    textField.setAutofocus(true);

    textField.addValueChangeListener(
        event -> {
          String value = event.getValue();
          if (!current.startsWith(value)) {
            textField.setInvalid(true);
            mistake++;
            currentSequence = 0;
          } else {
            textField.setInvalid(false);
            if (current.equals(value)) {
              success++;
              currentSequence++;
              if (currentSequence > longestSequence) longestSequence = currentSequence;
              next();
            }
          }
        });

    add(content);
    next();
  }

  @Override
  protected Score computeScore() {
    Score score = new Score();

    // add kpis
    score.addKPI(Constants.Resource.Strings.ScoreKPI.DURATION, getDurationString());
    score.addKPI(Constants.Resource.Strings.ScoreKPI.SUCCESS, success);
    score.addKPI(Constants.Resource.Strings.ScoreKPI.MISTAKES, mistake);
    score.addKPI(Constants.Resource.Strings.ScoreKPI.LONGEST_SEQUENCE, longestSequence);

    // build score
    int intScore = 100;
    try {
      if (getDurationMillis() > exercise.getExpectedTime(level))
        intScore -= (getDurationMillis() - exercise.getExpectedTime(level)) / 1000;
    } catch (NonExistingLevel nonExistingLevel) {
      nonExistingLevel();
    }
    intScore -= mistake;

    score.setScore(intScore);
    return score;
  }
}
