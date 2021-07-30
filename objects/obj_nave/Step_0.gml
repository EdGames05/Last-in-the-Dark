/// @description Mover la nave de izquierda a derecha y crear los meteoritos
// Puede escribir su código en este editor

// Derecha es igual a true
if(derecha_izquierda){
	if((x - 302) <= 50){
		direction = 0;
		derecha_izquierda = false;
	}
	else{
		direction = 180;
	}
}
else{
	if((x + 302) >= 1340){
		direction = 180;
		derecha_izquierda = true;
	}
	else{
		direction = 0;
	}
}