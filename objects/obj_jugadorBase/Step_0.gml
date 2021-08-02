/// @description Detectar teclas pulsadas
// Puede escribir su código en este editor

if((keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left)) and puede_moverse){
	if(derecha_izquierda){
		direction = 0;
		speed = velocidad;
		jugador_se_mueve = true;
	}
	else{
		direction = 180;
		speed = velocidad;
		jugador_se_mueve = true;
	}
}

var derecha = keyboard_check(vk_right) or keyboard_check(ord("D"));
var izquierda = keyboard_check(vk_left) or keyboard_check(ord("A"));
var arriba = keyboard_check(vk_up) or keyboard_check(ord("W"));
var abajo = keyboard_check(vk_down) or keyboard_check(ord("S"));

var tecla_pulsada = (derecha or izquierda or arriba or abajo);

var dx = derecha - izquierda;
var dy = abajo - arriba;

/*if((dx == 0) and (dy == 0)){
	tecla_pulsada = false;
}*/

var direccion_real = point_direction(0, 0, dx, dy);

// Ajustar velocidad si cualquiera fue presionado y direccion
if(tecla_pulsada and puede_moverse){

	x += lengthdir_x(velocidad, direccion_real);
	y += lengthdir_y(velocidad, direccion_real);

	jugador_se_mueve = true;
}


// Quitar aceleración si ya se pulsa nada
if((!tecla_pulsada or mouse_check_button_released(mb_left)) and puede_moverse){
	derecha_izquierda = !derecha_izquierda;
	speed = 0;
	jugador_se_mueve = false;
}

/*
if((y >= 1000) or ((x >= 1388) or (x <= -18))){
	if(global.puntos > int64(global.puntos_anterior)){
		ini_open("last_in_the_dark.ala");
		ini_write_string("puntos", "puntos_anteriores", string(global.puntos));
		ini_close();
	}
	instance_destroy(obj_meteoritos);
	instance_destroy(obj_nave);
	instance_destroy(obj_jugadorBase);
	instance_destroy(obj_rayoLaser);
	room_goto(rm_inicio);
}
*/

// Si ya no se puede mover entonces speed sera 0
if(!puede_moverse){
	speed = 0;
}

// Crear animacion cuando choca
var objeto_choco = instance_place(x, y, obj_meteoritos);
if(objeto_choco != noone){
	puede_moverse = false;
	sprite_index = spr_chocaRoca;
	direction = objeto_choco.direction;
	speed = objeto_choco.speed;
}

objeto_choco = instance_place(x, y, obj_rayoLaser);
if(objeto_choco != noone){
	puede_moverse = false;
	sprite_index = spr_chocaRoca;
	direction = objeto_choco.direction;
	speed = objeto_choco.speed;
}

// Destruir si está fuera de los limites
var cam = view_camera[0];
var x1 = camera_get_view_x(cam);
var y1 = camera_get_view_y(cam);
var x2 = x1 + camera_get_view_width(cam);
var y2 = y1 + camera_get_view_height(cam);
if( !point_in_rectangle( x, y, x1, y1, x2, y2)){
	
	if(global.puntos > int64(global.puntos_anterior)){
		ini_open("last_in_the_dark.ala");
		ini_write_string("puntos", "puntos_anteriores", string(global.puntos));
		ini_close();
	}
	instance_destroy(obj_meteoritos);
	instance_destroy(obj_nave);
	instance_destroy(obj_jugadorBase);
	instance_destroy(obj_rayoLaser);
	room_goto(rm_inicio);
    //instance_destroy();
}