/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var cam = view_camera[0];
var x1 = camera_get_view_x(cam);
var y1 = camera_get_view_y(cam);
var x2 = x1 + camera_get_view_width(cam);
var y2 = y1 + camera_get_view_height(cam);
if( !point_in_rectangle( x, y, x1, y1, x2, y2)){
	
	if((global.rayos%2) == 0){
		global.puntos += 1;
	}
	
	if(global.nivel == 8){
		global.rayoDirAnterior -= 10;
	}
	if((global.nivel == 10) and (global.rayoDirAnterior % 3 == 0)){
		global.rayoDirAnterior -= 3;
	}
	
	global.rayos-=1;
    instance_destroy();
}