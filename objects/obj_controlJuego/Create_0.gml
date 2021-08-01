/// @description Inicializa el nivel

global.meteoritos = 0;
global.nivel = 1;
global.puntos = 0;
global.posXJugador = 0;
global.posYJugador = 0;

ini_open("last_in_the_dark.ala")
global.puntos_anterior = ini_read_string("puntos", "puntos_anteriores", "0");
ini_close();