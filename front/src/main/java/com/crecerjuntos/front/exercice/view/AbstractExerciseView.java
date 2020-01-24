package com.crecerjuntos.front.exercice.view;

import com.crecerjuntos.front.exercice.Exercise;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.BeforeEvent;
import com.vaadin.flow.router.HasUrlParameter;
import com.vaadin.flow.server.VaadinSession;

import java.util.Random;

public abstract class AbstractExerciseView extends VerticalLayout
    implements HasUrlParameter<String> {

  protected static final long SEED = System.nanoTime();

  /** Randomness */
  protected final Random random;

  /** Associated exercise data */
  protected final Exercise exercise;

  /** Time when the user start the current exercise */
  protected final long startTime;

  /** The selected level of the exercice */
  protected int level;

  /** Identifier of the current user session */
  protected final String session;

  protected AbstractExerciseView(final Exercise exercise) {
    this.random = new Random(SEED);
    this.exercise = exercise;
    this.startTime = System.currentTimeMillis();
    this.session = VaadinSession.getCurrent().getSession().getId();
  }

  protected long getDurationMillis() {
    return System.currentTimeMillis() - startTime;
  }

  @Override
  public void setParameter(BeforeEvent event, String parameter) {
    if (parameter != null) {
      level = Integer.parseInt(parameter);
      if (level > exercise.getNbLevels() || level < 0) {
        throw new RuntimeException(
            "Required level : '"
                + level
                + "' of exercise :"
                + getTranslation(exercise.getName())
                + " doesn't exists");
      }
    }
  }
}
