/// @description Mover la nave de izquierda a derecha y crear los meteoritos
// Puede escribir su código en este editor

if(obj_jugadorBase.derecha_izquierda and obj_jugadorBase.jugador_se_mueve){
	speed = lerp(velocidad_nave, 5, 0.3);
	direction = 0;
}
else
if(!obj_jugadorBase.derecha_izquierda and obj_jugadorBase.jugador_se_mueve)
{
	direction = 180;
	speed = lerp(velocidad_nave, 5, 0.3);
}
else{
	speed = 0;
}