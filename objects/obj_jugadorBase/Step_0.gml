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

if(keyboard_check_pressed(vk_right) and puede_moverse){
	direction = 0;
	speed = velocidad;
	derecha_izquierda = true;
	jugador_se_mueve = true;
}

if(keyboard_check_pressed(vk_left) and puede_moverse){
	direction = 180;
	speed = velocidad;
	derecha_izquierda = false;
	jugador_se_mueve = true;
}

if(keyboard_check_pressed(vk_up) and puede_moverse){
	direction = 90;
	speed = velocidad;
}

if(keyboard_check_pressed(vk_down) and puede_moverse){
	direction = -90;
	speed = velocidad;
}

if((keyboard_check_released(vk_down) or keyboard_check_released(vk_up) or keyboard_check_released(vk_space) or keyboard_check_released(vk_right) or keyboard_check_released(vk_left) or mouse_check_button_released(mb_left)) and puede_moverse){
	derecha_izquierda = !derecha_izquierda;
	speed = 0;
	jugador_se_mueve = false;
}

if((y >= 1000) or ((x >= 1388) or (x <= -18))){
	if(global.puntos > int64(global.puntos_anterior)){
		ini_open("last_in_the_dark.ala");
		ini_write_string("puntos", "puntos_anteriores", string(global.puntos));
		ini_close();
	}
	instance_destroy(obj_meteoritos);
	instance_destroy(obj_nave);
	instance_destroy(obj_jugadorBase);
	room_goto(rm_inicio);
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