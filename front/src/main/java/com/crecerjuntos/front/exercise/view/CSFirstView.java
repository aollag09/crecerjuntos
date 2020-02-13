package com.crecerjuntos.front.exercise.view;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.ExerciseEnum;
import com.crecerjuntos.front.exercise.data.CSFirst;
import com.crecerjuntos.model.Score;
import com.crecerjuntos.front.exercise.view.error.NonExistingLevelView;
import com.crecerjuntos.front.util.Constants;
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

@Route(value = Constants.Route.CS_FIRST, layout = ExerciseLayout.class)
@PageTitle(Constants.Title.TITLE)
public class CSFirstView extends AbstractExerciseView {

  private NumberField scoreField;

  public CSFirstView() {
    super(ExerciseEnum.CS_FIRST.get());
  }

  @Override
  protected void onStart() {
    VerticalLayout instructions = new VerticalLayout();
    instructions.addClassName(Constants.ClassStyle.CSFirst.INSTRUCTIONS);
    instructions.setWidth("600px");

    Button instruction =
            new Button(
                    getTranslation(Constants.Resource.Strings.CSFirst.INSTRUCTION),
                    new Icon(VaadinIcon.INSTITUTION));
    instruction.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
    instruction.addClickListener(
            event -> {
              try {
                UI.getCurrent().getPage().setLocation(((CSFirst) exercise).getInstructionLink(level));
              } catch (NonExistingLevel nonExistingLevel) {
                UI.getCurrent().navigate(NonExistingLevelView.class);
              }
            });
    instructions.add(instruction);

    Button go =
        new Button(
            getTranslation(Constants.Resource.Strings.CSFirst.GO), new Icon(VaadinIcon.PLAY));
    go.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
    go.addClickListener(
        event -> {
          try {
            UI.getCurrent().getPage().setLocation(((CSFirst) exercise).getLink(level));
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

