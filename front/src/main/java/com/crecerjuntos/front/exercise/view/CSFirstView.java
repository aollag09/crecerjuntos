package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.data.Score;
import com.crecerjuntos.front.util.Constants;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route(value = Constants.Route.CS_FIRST, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class CSFirstView extends AbstractExerciseView {

  public CSFirstView() {
    super(ExerciseEnum.CS_FIRST.get());
  }

  @Override
  protected void onStart() {}

  @Override
  protected Score computeScore() {
    return null;
  }
}
