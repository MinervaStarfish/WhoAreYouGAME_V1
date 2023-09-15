import 'dart:io';

import 'main.dart';
import 'analizadores.dart';

/*String determinarPersonaje(Map<DatosJugador, String> respuestasJugador) {
  String nombre = respuestasJugador[DatosJugador.nombre]!;
  String colorFavorito = respuestasJugador[DatosJugador.color]!;
  int diaNacimiento = int.parse(respuestasJugador[DatosJugador.cumpleDia]!);

  if (colorFavorito == 'verde') {
    if (nombre.startsWith('a') || nombre.startsWith('m')) {
      return 'Ivern';
    } else {
      return 'Zac';
    }
  } else {
    if (diaNacimiento < 15) {
      return 'Jinx';
    } else {
      return 'Malphite';
    }
  }
}*/

  // Función para asegurarnos que los campos no esten vacíos
dynamic preguntador (String? pregunta, int tipoRespuesta) {
  print(pregunta);
  String? data = stdin.readLineSync();
  if (tipoRespuesta == 1) { // 1 para Nombre
    return data ?? 'NoName';

  } else if (tipoRespuesta == 2) { // 2 para fecha nacimiento
    return data ?? '01/01/2000';

  } else if (tipoRespuesta == 3) { // 3 para color favorito
    return pregunta ?? 'NoColor';

  } else {
    return pregunta ?? '';
  }
}

  // Función para determinar el personaje
String obtenerPersonaje(int puntos) {
  if (puntos >= 0 && puntos <= 10) {
    return "Ashe";
  } else if (puntos > 10 && puntos <= 20) {
    return "Garen";
  } else if (puntos > 20 && puntos <= 30) {
    return "Ahri";
  } else {
    return "No se pudo determinar el personaje";
  }
}


