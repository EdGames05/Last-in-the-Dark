/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);

if(global.nivel == 3)
{
	alarm[1] = 60;
	audio_play_sound(son_laser, 1, false);
}
else
if(global.nivel == 4)
{
	for(var i = 0; i < 5; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 55;
}
else
if(global.nivel == 5)
{
	for(var i = 0; i < 10; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 50;
}
else
if(global.nivel == 6)
{
	for(var i = 0; i < 15; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	
	alarm[1] = 48;
}
else
if(global.nivel == 7)
{
	for(var i = 0; i < 25; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 46;
}
else
if(global.nivel == 8)
{
	for(var i = 0; i < 25; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 42;
}
else
if(global.nivel == 9)
{
	for(var i = 0; i < 25; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 40;
}
else
if(global.nivel == 10)
{
	for(var i = 0; i < 30; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 35;
}
else
if(global.nivel == 11)
{
	for(var i = 0; i < 100; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 100;
}
else
if(global.nivel == 12)
{
	for(var i = 0; i < 100; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 100;
}
else
if(global.nivel == 13)
{
	for(var i = 0; i < 100; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 100;
}
else
if(global.nivel == 14)
{
	for(var i = 0; i < 100; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 100;
}
else
if(global.nivel == 15)
{
	for(var i = 0; i < 125; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 150;
}
else
if(global.nivel == 16)
{
	for(var i = 0; i < 130; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 200;
}
else{
	for(var i = 0; i < 140; i++){
		if((i%2) == 0)
		{
			instance_create_depth(obj_nave.x, obj_nave.y + 50, 0, obj_rayoLaser);
		}
	}
	audio_play_sound(son_laser, 1, false);
	alarm[1] = 300;
}