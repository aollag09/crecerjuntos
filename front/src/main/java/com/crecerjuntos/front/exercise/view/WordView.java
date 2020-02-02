package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.data.Score;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.server.StreamResource;
import org.vaadin.olli.FileDownloadWrapper;

import java.io.ByteArrayInputStream;

public class WordView extends AbstractExerciseView {

  // UI Elements
  private Button download;

  protected WordView(Exercise exercise) {
    super(exercise);
  }

  @Override
  protected void onStart() {

    download = new Button("Click to download");
    FileDownloadWrapper buttonWrapper =
        new FileDownloadWrapper(
            new StreamResource("foo.txt", () -> new ByteArrayInputStream("foo".getBytes())));
    buttonWrapper.wrapComponent(download);
  }

  @Override
  protected Score computeScore() {
    return null;
  }
}
