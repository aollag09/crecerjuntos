package com.crecerjuntos.front.exercise.data;

import com.crecerjuntos.front.exception.NonExistingLevel;
import com.crecerjuntos.front.exercise.Exercise;
import com.crecerjuntos.front.exercise.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class Dactylographie extends Exercise {

  public static final int NB_ROUNDS = 20;

  private Map<Integer, WordsBuilder> words;

  public Dactylographie() {
    super(
        Constants.Exercises.DACTYLOGRAPHIE_NAME,
        Constants.Resource.Strings.Dactylographie.TITLE,
        Constants.Resource.Strings.Dactylographie.INSTRUCTIONS,
        buildLevels(),
        Difficulty.Easy,
        2,
        Constants.Route.DACTYLOGRAPHIE);
    words = new HashMap<>();
    words.put(0, new WordsBuilderLevel1());
    words.put(1, new WordsBuilderLevel2());
    words.put(2, new WordsBuilderLevel3());
    words.put(3, new WordsBuilderLevel4());
    words.put(4, new WordsBuilderLevel5());
    words.put(5, new WordsBuilderLevel6());
    words.put(6, new WordsBuilderLevel7());
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, Constants.Resource.Strings.Dactylographie.LVL1_NAME));
    levels.add(new Level(2, Constants.Resource.Strings.Dactylographie.LVL2_NAME));
    levels.add(new Level(3, Constants.Resource.Strings.Dactylographie.LVL3_NAME));
    levels.add(new Level(4, Constants.Resource.Strings.Dactylographie.LVL4_NAME));
    levels.add(new Level(5, Constants.Resource.Strings.Dactylographie.LVL5_NAME));
    levels.add(new Level(6, Constants.Resource.Strings.Dactylographie.LVL6_NAME));
    levels.add(new Level(7, Constants.Resource.Strings.Dactylographie.LVL7_NAME));
    return levels;
  }

  @Override
  public long getExpectedTime(final int level) throws NonExistingLevel {
    if (level == 0) return 1300 * NB_ROUNDS;
    if (level == 1) return 1000 * NB_ROUNDS;
    if (level == 2) return 3000 * NB_ROUNDS;
    if (level == 3) return 3300 * NB_ROUNDS;
    if (level == 4) return 4000 * NB_ROUNDS;
    if (level == 5) return 12000 * NB_ROUNDS;
    if (level == 6) return 13000 * NB_ROUNDS;
    throw new NonExistingLevel(this.name, level);
  }

  public List<String> getWords(final int level) throws NonExistingLevel {
    if (level >= 0 && level < words.size()) return words.get(level).build();
    else throw new NonExistingLevel(this.name, level);
  }

  public interface WordsBuilder {
    List<String> build();
  }

  public static class WordsBuilderLevel1 implements WordsBuilder {
    @Override
    public List<String> build() {
      return new ArrayList<>(
          Arrays.asList(
              "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q",
              "r", "s", "t", "u", "v", "w", "x", "y", "z"));
    }
  }

  public static class WordsBuilderLevel2 implements WordsBuilder {
    @Override
    public List<String> build() {
      return new ArrayList<>(
          Arrays.asList(
              "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16",
              "17", "18", "19", "20"));
    }
  }

  public static class WordsBuilderLevel3 implements WordsBuilder {
    @Override
    public List<String> build() {
      Pattern p = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
      return SPANISH_WORDS.stream()
          .filter(s -> !p.matcher(s).find())
          .map(String::toLowerCase)
          .collect(Collectors.toList());
    }
  }

  public static class WordsBuilderLevel4 implements WordsBuilder {
    @Override
    public List<String> build() {
      return SPANISH_WORDS.stream().map(String::toLowerCase).collect(Collectors.toList());
    }
  }

  public static class WordsBuilderLevel5 implements WordsBuilder {
    @Override
    public List<String> build() {
      return new ArrayList<>(SPANISH_WORDS);
    }
  }

  public static class WordsBuilderLevel6 implements WordsBuilder {

    @Override
    public List<String> build() {
      return new ArrayList<>(
          Arrays.asList(
              "barack.obama@yahoo.us",
              "steve.jobs@icloud.com",
              "emmanuel.macron@hotmail.fr",
              "jesus.christ@heaven.com",
              "lionel.messi@gmail.com",
              "christiano.ronaldo@outlook.com",
              "paul.pogba@hotmail.fr",
              "antoine.griezman@gmail.com",
              "ugo.lloris@outlook.fr",
              "raphael.nadal@hotmail.es",
              "roger.federer@gmail.com",
              "kilian.mbappe@gmail.com",
              "mickael.jackson@gmail.com",
              "bill.gates@microsoft.com",
              "jackie.chan@gmail.com",
              "emma.watson@gmail.com",
              "dalai.lama@gmail.com",
              "pope.francis@gmail.com",
              "queen.elizabeth2@hotmail.uk",
              "madonna@gmail.com",
              "elon.musk@gmail.com"));
    }
  }

  public static class WordsBuilderLevel7 implements WordsBuilder {

    @Override
    public List<String> build() {
      return new ArrayList<>(
          Arrays.asList(
              "She is very intelligent",
              "She is beautiful",
              "It is easy",
              "We are happy",
              "Medellin is an incredible city",
              "I'm learning how to use a computer",
              "There is someone at the door",
              "I love football",
              "He works at a factory",
              "He sat under a tree",
              "I love being at home",
              "Love will always find a way",
              "This is not a book",
              "Do you have pencils ?",
              "What is the name of the president ?",
              "What is your favourite food ?",
              "How are you ?",
              "What's your name ?",
              "Do you have an email account ?",
              "I'm gonna take a shower",
              "Should I stay or should I go ?",
              "I'm almost done"));
    }
  }

  private static final List<String> SPANISH_WORDS =
      Arrays.asList(
          "Adiós",
          "Agua",
          "Ahora",
          "Amar",
          "Amigo",
          "Aprender",
          "Árbol",
          "Autobús",
          "Ayer",
          "Bolígrafo",
          "Bonito",
          "Bueno",
          "Cabeza",
          "Calle",
          "Cama",
          "Canción",
          "Casa",
          "Ciudad",
          "Coche",
          "Colegio",
          "Comida",
          "Contento",
          "Correr",
          "Cosa",
          "Chica",
          "Chico",
          "Dar",
          "Decir",
          "Deporte",
          "Día",
          "Difícil",
          "Dinero",
          "Fácil",
          "Familia",
          "Feo",
          "Fiesta",
          "Flor",
          "Fuerte",
          "Galleta",
          "Gente",
          "Grande",
          "Gustar",
          "Haber",
          "Habitación",
          "Hablar",
          "Hacer",
          "Hermana",
          "Hermano",
          "Hija",
          "Hijo",
          "Hogar",
          "Hola",
          "Hombre",
          "Hoy",
          "Inteligente",
          "Ir",
          "Jugar",
          "Lápiz",
          "Leer",
          "Libro",
          "Llorar",
          "Madre",
          "Malo",
          "Mañana",
          "Mar",
          "Mujer",
          "Música",
          "Niño",
          "Noche",
          "Nombre",
          "Nuevo",
          "Número",
          "Nunca",
          "Padre",
          "Pagar",
          "Papelera",
          "Parar",
          "Pensar",
          "Pequeño",
          "Poner",
          "Preguntar",
          "Puerta",
          "Rápido",
          "Reloj",
          "Responder",
          "Ropa",
          "Sentar",
          "Ser",
          "Silla",
          "Sitio",
          "Sonrisa",
          "Tarde",
          "Teléfono",
          "Televisión",
          "Tienda",
          "Trabajar",
          "Zapato");
}
