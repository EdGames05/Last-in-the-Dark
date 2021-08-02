/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
speed = 6;

direction = point_direction(x, y, obj_jugadorBase.x, obj_jugadorBase.y);
image_angle = point_direction(x, y, obj_jugadorBase.x, obj_jugadorBase.y);
global.rayos += 1;

if(global.nivel == 4){
	global.rayoDirAnterior += 30;
	direction = global.rayoDirAnterior;
	image_angle = global.rayoDirAnterior;
}
else
if((global.nivel >= 5) and (global.nivel <= 6)){
	global.rayoDirAnterior += 10;
	direction = global.rayoDirAnterior;
	image_angle = global.rayoDirAnterior;
}
else
if(global.nivel == 7){
	global.rayoDirAnterior += 15;
	direction = global.rayoDirAnterior;
	image_angle = global.rayoDirAnterior;
}
else
if(global.nivel == 8){
	global.rayoDirAnterior += 30;
	direction = global.rayoDirAnterior;
	image_angle = global.rayoDirAnterior;
}
else
if(global.nivel == 9){
	global.rayoDirAnterior += 50;
	direction = global.rayoDirAnterior;
	image_angle = global.rayoDirAnterior;
}
else
if(global.nivel == 10){
	global.rayoDirAnterior += 13.5;
	direction = global.rayoDirAnterior;
	image_angle = global.rayoDirAnterior;
}
else
if(global.nivel >= 12){
	global.rayoDirAnterior += 15.5;
	direction = global.rayoDirAnterior;
	image_angle = global.rayoDirAnterior;
}