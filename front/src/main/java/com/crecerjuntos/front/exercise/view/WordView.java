package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.data.Score;
import com.crecerjuntos.front.exercise.data.Word;
import com.crecerjuntos.front.exercise.view.error.NonExistingLevelView;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.checkbox.Checkbox;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.StreamResource;
import org.vaadin.olli.FileDownloadWrapper;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Route(value = Constants.Route.WORD, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class WordView extends AbstractExerciseView {

  private Map<Checkbox, Word.Step> steps;

  public WordView() {
    super(ExerciseEnum.WORD.get());
    steps = new HashMap<>();
  }

  @Override
  protected void onStart() {
    VerticalLayout content = new VerticalLayout();
    content.addClassName(Constants.ClassStyle.Word.CONTENT);

    // template
    Div template = new Div();
    template.addClassName(Constants.ClassStyle.Word.TEMPLATE);
    template.add(buildDownloadTemplate());
    content.add(template);

    // form
    try {
      content.add(buildForm(level));
    } catch (NonExistingLevel nonExistingLevel) {
      UI.getCurrent().navigate(NonExistingLevelView.class);
    }

    // validation
    content.add(buildAdminValidation());

    add(content);
  }

  public Component buildDownloadTemplate() {
    // UI Elements
    FileDownloadWrapper buttonWrapper = null;
    Button download =
        new Button(
            getTranslation(Constants.Resource.Strings.Template.DOWNLOAD),
            new Icon(VaadinIcon.DOWNLOAD));
    try {
      final byte[] template = ((Word) exercise).getTemplate(level);
      buttonWrapper =
          new FileDownloadWrapper(
              new StreamResource(
                  exercise.getTitle() + "-" + level + "-template.docx",
                  () -> new ByteArrayInputStream(template)));
      buttonWrapper.wrapComponent(download);
      download.addThemeVariants(ButtonVariant.LUMO_PRIMARY, ButtonVariant.LUMO_LARGE);
    } catch (NonExistingLevel nonExistingLevel) {
      nonExistingLevel();
    } catch (IOException e) {
      error("IO Exception reading template " + exercise.getName() + "level : " + level, e);
    }
    return buttonWrapper;
  }

  public Component buildForm(final int level) throws NonExistingLevel {
    VerticalLayout form = new VerticalLayout();
    form.setWidth("500px");
    form.setAlignItems(Alignment.START);
    form.addClassName(Constants.ClassStyle.Word.FORM);
    List<Word.Step> stepList = ((Word) exercise).getSteps(level);
    for (Word.Step step : stepList) {
      Checkbox box = new Checkbox(getTranslation(step.getTitle()));
      steps.put(box, step);
      form.add(box);
    }
    return form;
  }

  @Override
  protected Score computeScore() {
    Score score = new Score();
    int finalScore = 0;
    for (Map.Entry<Checkbox, Word.Step> entry : steps.entrySet()) {
      Checkbox box = entry.getKey();
      Word.Step step = entry.getValue();
      int stepScore = box.getValue() ? step.getScore() : 0;
      score.addKPI(step.getTitle(), stepScore);
      finalScore += stepScore;
    }
    score.setScore(finalScore);
    return score;
  }
}
