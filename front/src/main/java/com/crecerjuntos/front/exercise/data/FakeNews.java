package com.crecerjuntos.front.exercise.data;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;
import org.javatuples.Pair;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FakeNews extends Exercise {

  public static final int NB_ROUND_LEVEL_1 = 10;

  private Map<Integer, FakeNews.QABuilder> questionsAnswers;

  public FakeNews() {
    super(
        Constants.Exercises.FAKE_NEWS_NAME,
        Constants.Resource.Strings.FakeNews.TITLE,
        Constants.Resource.Strings.FakeNews.INSTRUCTIONS,
        buildLevels(),
        Difficulty.Medium,
        2,
        Constants.Route.FAKE_NEWS);
    questionsAnswers = new HashMap<>();
    questionsAnswers.put(0, new QABuilderLevel0());
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, getLevelName(Constants.Resource.Strings.FakeNews.NAME, 1)));
    return levels;
  }

  @Override
  public long getExpectedTime(int level) throws NonExistingLevel {
    if (level == 0) return 900000;
    throw new NonExistingLevel(this.name, level);
  }

  public Map<String, String> getQuestionAnswerMap(int level) throws NonExistingLevel {
    if (level >= 0 && level < questionsAnswers.size())
      return questionsAnswers.get(level).buildQuestionAnswerMap();
    else throw new NonExistingLevel(this.name, level);
  }

  public List<Pair<String, List<String>>> getQuestionAnswersList(int level)
      throws NonExistingLevel {
    if (level >= 0 && level < questionsAnswers.size())
      return questionsAnswers.get(level).buildQuestionAnswersList();
    else throw new NonExistingLevel(this.name, level);
  }

  public interface QABuilder {
    Map<String, String> buildQuestionAnswerMap();

    List<Pair<String, List<String>>> buildQuestionAnswersList();
  }

  public static class QABuilderLevel0 implements QABuilder {

    @Override
    public Map<String, String> buildQuestionAnswerMap() {
      Map<String, String> qaMap = new HashMap<>();
      qaMap.put(
          "El club Paris Saint Germain donó 40 millones de euros al club Chapecoense después de la tragedia de su avión.",
          "Falso");
      qaMap.put(
          "Desde 2018 Colombianos pueden viajar sin visa para Estados Unidos si su estadía no es mayor a 180 días.",
          "Falso");
      qaMap.put(
          "Un parque zoológico de los País Bajos creó una aplicación de citas en línea para orangutanes.",
          "Verdadero");
      qaMap.put("El papa Francisco apoyó a Donald Trump durante la campaña presidencial.", "Falso");
      qaMap.put("Donald Trump quiere limitar las visas a las mujeres embarazadas ", "Verdadero");
      qaMap.put("Hillary Clinton vendió armas al grupo terrorista Estado Islámico.", "Falso");
      qaMap.put(
          "Una empresa del Reino Unido utilizó los datos sobre Facebook de 50 millones de usuarios sin permiso en campañas electorales de todo el mundo.",
          "Verdadero");
      qaMap.put(
          "A un hombre en Edmonton, Canadá, se le permitió embarcar en un vuelo luego de que encontraran (y confiscaran) una bomba casera en su equipaje.",
          "Verdadero");
      qaMap.put("El coronavirus se propaga también en las parcelas que vienen de China.", "Falso");
      qaMap.put("Amazon abrió una tienda llamada Amazon Go en Seattle, USA.", "Verdadero");
      return qaMap;
    }

    @Override
    public List<Pair<String, List<String>>> buildQuestionAnswersList() {
      List<String> trueFalseES = Arrays.asList("Verdadero", "Falso");

      List<Pair<String, List<String>>> questionAnswersList = new ArrayList<>();
      questionAnswersList.add(
          new Pair<>(
              "El club Paris Saint Germain donó 40 millones de euros al club Chapecoense después de la tragedia de su avión.",
              trueFalseES));
      questionAnswersList.add(
          new Pair<>(
              "Desde 2018 Colombianos pueden viajar sin visa para Estados Unidos si su estadía no es mayor a 180 días.",
              trueFalseES));
      questionAnswersList.add(
          new Pair<>(
              "Un parque zoológico de los País Bajos creó una aplicación de citas en línea para orangutanes.",
              trueFalseES));
      questionAnswersList.add(
          new Pair<>(
              "El papa Francisco apoyó a Donald Trump durante la campaña presidencial.",
              trueFalseES));
      questionAnswersList.add(
          new Pair<>(
              "Donald Trump quiere limitar las visas a las mujeres embarazadas ", trueFalseES));
      questionAnswersList.add(
          new Pair<>(
              "Hillary Clinton vendió armas al grupo terrorista Estado Islámico.", trueFalseES));
      questionAnswersList.add(
          new Pair<>(
              "Una empresa del Reino Unido utilizó los datos sobre Facebook de 50 millones de usuarios sin permiso en campañas electorales de todo el mundo.",
              trueFalseES));
      questionAnswersList.add(
          new Pair<>(
              "A un hombre en Edmonton, Canadá, se le permitió embarcar en un vuelo luego de que encontraran (y confiscaran) una bomba casera en su equipaje.",
              trueFalseES));
      questionAnswersList.add(
          new Pair<>(
              "El coronavirus se propaga también en las parcelas que vienen de China.",
              trueFalseES));
      questionAnswersList.add(
          new Pair<>("Amazon abrió una tienda llamada Amazon Go en Seattle, USA.", trueFalseES));
      return questionAnswersList;
    }
  }
}
