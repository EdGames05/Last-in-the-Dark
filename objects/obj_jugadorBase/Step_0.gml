/// @description Detectar teclas pulsadas
// Puede escribir su código en este editor

if(keyboard_check_pressed(vk_space)){
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

if(keyboard_check_pressed(vk_right)){
	direction = 0;
	speed = velocidad;
	derecha_izquierda = true;
	jugador_se_mueve = true;
}

if(keyboard_check_pressed(vk_left)){
	direction = 180;
	speed = velocidad;
	derecha_izquierda = false;
	jugador_se_mueve = true;
}

if(keyboard_check_pressed(vk_up)){
	direction = 90;
	speed = velocidad;
}

if(keyboard_check_pressed(vk_down)){
	direction = -90;
	speed = velocidad;
}

if(keyboard_check_released(vk_space) or keyboard_check_released(vk_right) or keyboard_check_released(vk_left)){
	derecha_izquierda = !derecha_izquierda;
	speed = 0;
	jugador_se_mueve = false;
}