/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var obj_jugadorInstancia = instance_place(x,y, obj_jugadorBase);

if((obj_jugadorInstancia != noone) and (puede_disparar))
{
	global.posXJugador = obj_jugadorInstancia.x;
	global.posYJugador = obj_jugadorInstancia.y;
	puede_disparar = false;
	alarm[0] = 50;
	instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
}