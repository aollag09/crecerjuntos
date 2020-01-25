package com.crecerjuntos.front.exercice.data;

import com.crecerjuntos.front.exercice.Exercise;
import com.crecerjuntos.front.exercice.Level;
import com.crecerjuntos.front.util.Constants;
import com.crecerjuntos.front.util.Difficulty;

import java.util.*;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class Dactylographie extends Exercise {

  private Map<Integer, WordsBuilder> words;

  public Dactylographie() {
    super(
        Constants.Resource.Strings.Dactylographie.TITLE,
        Constants.Resource.Strings.Dactylographie.INSTRUCTIONS,
        buildLevels(),
        Difficulty.Easy,
        2,
        Constants.Route.DACTYLOGRAPHIE);
    words = new HashMap<>();
    words.put(0, new Level1());
    words.put(1, new Level2());
    words.put(2, new Level3());
    words.put(3, new Level4());
    words.put(4, new Level5());
  }

  private static List<Level> buildLevels() {
    List<Level> levels = new ArrayList<Level>();
    levels.add(new Level(1, Constants.Resource.Strings.Dactylographie.LVL1_NAME));
    levels.add(new Level(2, Constants.Resource.Strings.Dactylographie.LVL2_NAME));
    levels.add(new Level(3, Constants.Resource.Strings.Dactylographie.LVL3_NAME));
    levels.add(new Level(4, Constants.Resource.Strings.Dactylographie.LVL4_NAME));
    levels.add(new Level(5, Constants.Resource.Strings.Dactylographie.LVL5_NAME));
    return levels;
  }

  public List<String> getWords(final int level) {
    return words.get(level).build();
  }

  public interface WordsBuilder {
    List<String> build();
  }

  public static class Level1 implements WordsBuilder {
    @Override
    public List<String> build() {
      return Arrays.asList(
          "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
          "s", "t", "u", "v", "w", "x", "y", "z");
    }
  }

  public static class Level2 implements WordsBuilder {
    @Override
    public List<String> build() {
      return Arrays.asList(
          "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16",
          "17", "18", "19", "20");
    }
  }

  public static class Level4 implements WordsBuilder {
    @Override
    public List<String> build() {
      return SPANISH_WORDS.stream().map(String::toLowerCase).collect(Collectors.toList());
    }
  }

  public static class Level3 implements WordsBuilder {
    @Override
    public List<String> build() {
      Pattern p = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
      return SPANISH_WORDS.stream()
          .filter(
              s -> {
                return !p.matcher(s).find();
              })
          .map(String::toLowerCase)
          .collect(Collectors.toList());
    }
  }

  public static class Level5 implements WordsBuilder {
    @Override
    public List<String> build() {
      return new ArrayList<>(SPANISH_WORDS);
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
