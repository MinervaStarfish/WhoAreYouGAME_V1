// ¿Qué personaje de League of Legends eres?

import 'dart:io';
import 'funciones.dart';
import 'analizadores.dart';


enum DatosJugador {
  nombre,
  cumpleDia,
  cumpleMes,
  cumpleAno,
  color
}


main (){
   Map<DatosJugador, String> respuestasJugador = {};

  print("¡Bienvenido al juego '¿Qué personaje de League of Legends eres?'!\n");

    // Preguntar el nombre del jugador
  String nombre = preguntador("Por favor ingresa tu nombre:", 1);

  respuestasJugador[DatosJugador.nombre] = nombre.split(' ')[0];

   // Preguntar la fecha de nacimiento del jugador
  String fechaNacimiento = preguntador("Por favor ingresa tu fecha de nacimiento en formato dd/mm/yyyy:", 2);

  List<String> partesFechaNacimiento = fechaNacimiento.split('/');
  respuestasJugador[DatosJugador.cumpleDia] = partesFechaNacimiento[0];
  respuestasJugador[DatosJugador.cumpleMes] = partesFechaNacimiento[1];
  respuestasJugador[DatosJugador.cumpleAno] = partesFechaNacimiento[2];

    // Preguntar el color favorito del jugador
  String colorFavorito = preguntador("Por favor ingresa tu color favorito:", 3);
  
  respuestasJugador[DatosJugador.color] = colorFavorito.toLowerCase();

    // Determinar el personaje de League of Legends
  //String? personaje = determinarPersonaje(respuestasJugador);
  int puntosTotales = 0;
  
    // Llamar a cada función y agregar los puntos al total
  puntosTotales += analizarNombre(respuestasJugador);
  puntosTotales += analizarFechaNacimiento(respuestasJugador);
  puntosTotales += analizarColorFavorito(respuestasJugador);

    // Imprimir el resultado
  String personaje = obtenerPersonaje(puntosTotales);
  print("El personaje es: $personaje");

}
