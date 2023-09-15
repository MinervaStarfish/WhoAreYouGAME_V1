import 'dart:io';
import 'funciones.dart';
import 'main.dart';



int analizarNombre(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.nombre]!.length;
  
  if (cantidadCaracteres <= 5) {
    puntos += 5;
  } else if (cantidadCaracteres <= 10) {
    puntos += 10;
  } else {
    puntos += 15;
  }
  
  return puntos;
}

int analizarFechaNacimiento(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int dia = int.parse(respuestasJugador[DatosJugador.cumpleDia]!);
  int mes = int.parse(respuestasJugador[DatosJugador.cumpleMes]!);
  int ano = int.parse(respuestasJugador[DatosJugador.cumpleAno]!);
  int suma = dia + mes + ano;
  
  if (suma % 2 == 0) {
    puntos += 10;
  } else {
    puntos += 5;
  }
  
  return puntos;
}

int analizarColorFavorito(Map<DatosJugador, String> respuestasJugador) {
  int puntos = 0;
  int cantidadCaracteres = respuestasJugador[DatosJugador.color]!.length;
  
  if (cantidadCaracteres < 6) {
    puntos += 5;
  } else if (cantidadCaracteres == 6) {
    puntos += 10;
  } else {
    puntos += 15;
  }
  
  return puntos;
}
