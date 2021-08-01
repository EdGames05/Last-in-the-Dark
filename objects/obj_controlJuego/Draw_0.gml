/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(room == rm_nivel){
	draw_set_color(c_white);
	draw_text(x, y, "SCORE: " + string(global.puntos));
	draw_text(x, y + 30, "RECORD: " + global.puntos_anterior);
	
	var proximo_nivel = "200";
	if(global.nivel == 1)
	{
		proximo_nivel = "200";
	}
	else
	if(global.nivel == 2)
	{
		proximo_nivel = "400";
	}
	else
	if(global.nivel == 3)
	{
		proximo_nivel = "800";
	}
	else
	if(global.nivel == 4)
	{
		proximo_nivel = "1200";
	}
	else
	if(global.nivel == 5)
	{
		proximo_nivel = "1500";
	}
	else
	if(global.nivel == 6)
	{
		proximo_nivel = "1800";
	}
	else
	if(global.nivel == 7)
	{
		proximo_nivel = "2000";
	}
	else
	if(global.nivel == 8)
	{
		proximo_nivel = "2500";
	}
	else
	if(global.nivel == 9)
	{
		proximo_nivel = "2800";
	}
	else
	if(global.nivel == 10)
	{
		proximo_nivel = "3000";
	}
	else
	if(global.nivel == 12)
	{
		proximo_nivel = "3300";
	}
	else
	if(global.nivel == 13)
	{
		proximo_nivel = "3700";
	}
	else
	if(global.nivel == 14)
	{
		proximo_nivel = "4000";
	}
	else
	if(global.nivel == 15)
	{
		proximo_nivel = "5000";
	}
	else
	if(global.nivel == 16)
	{
		proximo_nivel = "7000";
	}
	else{
		proximo_nivel = "00";
	}
	
	draw_text(x, y + 60, "NEXT LEVEL: " + proximo_nivel);
}