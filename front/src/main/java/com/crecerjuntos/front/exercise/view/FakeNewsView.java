package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.data.FakeNews;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.model.Score;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.radiobutton.RadioButtonGroup;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.javatuples.Pair;

import java.util.List;
import java.util.Map;

import static java.lang.Math.round;

@Route(value = Constants.Route.FAKE_NEWS, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class FakeNewsView extends AbstractExerciseView {
  private int counter, mistake, success;

  private String currentQuestion;
  private List<String> currentAnswers;

  private Map<String, String> questionAnswerMap;
  private List<Pair<String, List<String>>> questionAnswersList;

  private Text question;
  private RadioButtonGroup<String> answers;

  private void next() {
    counter++;
    if (counter > FakeNews.NB_ROUND_LEVEL_1) end();
    else {
      nextQuestion();
    }
  }

  private void nextQuestion() {
    currentQuestion = questionAnswersList.get(counter - 1).getValue0();
    currentAnswers = questionAnswersList.get(counter - 1).getValue1();

    question.setText(currentQuestion);
    answers.setItems(currentAnswers);
  }

  public FakeNewsView() {
    super(ExerciseEnum.FAKE_NEWS.get());
  }

  @Override
  protected void onStart() {
    counter = 0;
    try {
      questionAnswerMap = ((FakeNews) exercise).getQuestionAnswerMap(level);
      questionAnswersList = ((FakeNews) exercise).getQuestionAnswersList(level);
    } catch (NonExistingLevel nonExistingLevel) {
      nonExistingLevel();
    }

    VerticalLayout content = new VerticalLayout();
    content.addClassName(Constants.ClassStyle.FakeNews.CONTENT);

    Div questionDiv = new Div();
    questionDiv.addClassName(Constants.ClassStyle.FakeNews.QUESTION);
    question = new Text("");
    questionDiv.add(question);
    content.add(questionDiv);

    answers = new RadioButtonGroup<>();
    answers.addClassName(Constants.ClassStyle.FakeNews.ANSWERS);
    content.add(answers);

    answers.addValueChangeListener(
        event -> {
          String selectedAnswer = event.getValue();
          String actualAnswer = questionAnswerMap.get(currentQuestion);
          if (selectedAnswer == null) {
            answers.setVisible(true);
          } else {
            if (selectedAnswer.equals(actualAnswer)) {
              success++;
              Notification notification = new Notification("Buena Respuesta !", 3000);
              //                  notification.setPosition(Position.MIDDLE);
              //                  notification.open();
            } else {
              mistake++;
              Notification notification =
                  new Notification("Qué pena, la respuesta es : " + actualAnswer, 3000);
              //                  notification.setPosition(Position.MIDDLE);
              //                  notification.open();
            }
            next();
          }
        });

    add(content);
    next();
  }

  @Override
  protected Score computeScore() {
    Score score = new Score();
    // add kpis
    score.addKPI(Constants.Resource.Strings.ScoreKPI.SUCCESS, success);
    score.addKPI(Constants.Resource.Strings.ScoreKPI.MISTAKES, mistake);

    int intScore = (int) round((success / (1.0 * FakeNews.NB_ROUND_LEVEL_1)) * 100);

    score.setScore(intScore);
    return score;
  }
}
