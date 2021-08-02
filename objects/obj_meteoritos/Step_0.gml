/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

image_angle += velocidad_rotacion;

if(y >= 1000){
	global.meteoritos -= 1;
	global.puntos += 20;
	instance_destroy();
}