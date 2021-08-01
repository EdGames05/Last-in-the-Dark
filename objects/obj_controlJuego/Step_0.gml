/// @description Inserte aquí la descripción
// Puede escribir su código en este editor




// Cambiar de habitación (room)
if((keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left)) and (room == rm_inicio)){
	global.puntos = 0;
	global.nivel = 1;
	global.meteoritos = 0;
	room_goto(rm_nivel);
}