package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.data.Score;
import com.crecerjuntos.front.exercise.data.Word;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.StreamResource;
import org.vaadin.olli.FileDownloadWrapper;

import java.io.ByteArrayInputStream;
import java.io.IOException;

@Route(value = Constants.Route.WORD, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class WordView extends AbstractExerciseView {

  // UI Elements
  private Button download;

  public WordView() {
    super(ExerciseEnum.WORD.get());
  }

  @Override
  protected void onStart() {
    buildDownloadTemplate();
  }

  public void buildDownloadTemplate() {
    download = new Button(getTranslation(Constants.Resource.Strings.Template.DOWNLOAD));
    try {
      final byte[] template = ((Word) exercise).getTemplate(level);
      FileDownloadWrapper buttonWrapper =
          new FileDownloadWrapper(
              new StreamResource(
                  exercise.getTitle() + "-" + level + "-template.docx",
                  () -> new ByteArrayInputStream(template)));
      buttonWrapper.wrapComponent(download);
    } catch (NonExistingLevel nonExistingLevel) {
      nonExistingLevel();
    } catch (IOException e) {
      error("IO Exception reading template " + exercise.getName() + "level : " + level, e);
    }
    add(download);
  }

  @Override
  protected Score computeScore() {
    return null;
  }
}
