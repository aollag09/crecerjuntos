package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.data.IA;
import com.crecerjuntos.front.exercise.view.error.NonExistingLevelView;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.model.Score;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.icon.Icon;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.NumberField;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.javatuples.Pair;

@Route(value = Constants.Route.IA, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class IAView extends AbstractExerciseView {

  private NumberField scoreField;

  public IAView() {
    super(ExerciseEnum.IA.get());
  }

  @Override
  protected void onStart() {
    VerticalLayout instructions = new VerticalLayout();
    instructions.addClassName(Constants.ClassStyle.CSFirst.INSTRUCTIONS);
    instructions.setWidth("600px");

    Button go =
        new Button(getTranslation(Constants.Resource.Strings.IA.GO), new Icon(VaadinIcon.PLAY));
    go.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
    go.addClickListener(
        event -> {
          try {
            UI.getCurrent().getPage().setLocation(((IA) exercise).getLink(level));
          } catch (NonExistingLevel nonExistingLevel) {
            UI.getCurrent().navigate(NonExistingLevelView.class);
          }
        });
    instructions.add(go);

    add(instructions);

    Pair<VerticalLayout, NumberField> pair = buildScore();
    add(pair.getValue0());
    scoreField = pair.getValue1();

    add(buildAdminValidation());
  }

  @Override
  protected Score computeScore() {
    if (scoreField != null && scoreField.getValue() != null) {
      Score score = new Score();
      score.setScore(scoreField.getValue().intValue());
      return score;
    }
    return null;
  }
}
