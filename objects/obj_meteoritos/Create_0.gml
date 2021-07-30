/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


velocidad_rotacion = 1;

velocidad_caida = 3;

image_speed = 0;
image_index = irandom_range(0, 2);

if(global.nivel == 2){
	velocidad_caida++;
}

speed = velocidad_caida;
direction = -90;