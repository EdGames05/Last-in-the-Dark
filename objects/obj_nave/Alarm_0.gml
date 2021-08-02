
// Fijar nivel
// Cambiar de nivel por cantidad de puntos

if(global.puntos >= 200){
	global.nivel = 2;
}

if(global.puntos >= 400){
	global.nivel = 3;
	alarm[1] = 1;
}

if(global.puntos >= 800){
	global.nivel = 4;
	alarm[1] = 1;
}

if(global.puntos >= 1200){
	global.nivel = 5;
	alarm[1] = 1;
}

if(global.puntos >= 1500){
	global.nivel = 6;
	alarm[1] = 1;
}

if(global.puntos >= 1800){
	global.nivel = 7;
	alarm[1] = 1;
}

if(global.puntos >= 2000){
	global.nivel = 8;
	alarm[1] = 1;
}

if(global.puntos >= 2500){
	global.nivel = 9;
	alarm[1] = 1;
}

if(global.puntos >= 2800){
	global.nivel = 10;
	alarm[1] = 1;
}

if(global.puntos >= 3000){
	global.nivel = 12;
	alarm[1] = 1;
}

if(global.puntos >= 3300){
	global.nivel = 13;
	alarm[1] = 1;
}

if(global.puntos >= 3700){
	global.nivel = 14;
	alarm[1] = 1;
}

if(global.puntos >= 4000){
	global.nivel = 15;
	alarm[1] = 1;
}

if(global.puntos >= 5000){
	global.nivel = 16;
	alarm[1] = 1;
}

var xPos = irandom_range(x - 310, x + 310);

// Niveles y meteoritos, cantidad de generación de meteoritos por nivel
if(global.meteoritos < 25)
{
	instance_create_depth(xPos, y + 25, 0, obj_meteoritos);
	global.meteoritos += 1;
}

/*
else
if((global.meteoritos < 20) and (global.nivel == 2))
{
	instance_create_depth(xPos, y + 25, 0, obj_meteoritos);
	global.meteoritos += 1;
}
else{
	instance_create_depth(xPos, y + 25, 0, obj_meteoritos);
	global.meteoritos += 1;
}
*/


// Niveles, velocidad de generación
if(global.nivel == 1)
{
	alarm[0] = 25;
}
else
if(global.nivel == 2)
{
	alarm[0] = 30;
}
else
if(global.nivel == 3)
{
	alarm[0] = 35;
}
else
if(global.nivel == 4)
{
	alarm[0] = 40;
}
else
if(global.nivel == 5)
{
	alarm[0] = 45;
}
else
if(global.nivel == 6)
{
	alarm[0] = 50;
}
else
if(global.nivel == 7)
{
	alarm[0] = 55;
}
else
if(global.nivel == 8)
{
	alarm[0] = 60;
}
else
if(global.nivel == 9)
{
	alarm[0] = 65;
}
else
if(global.nivel == 10)
{
	alarm[0] = 70;
}
else
if(global.nivel == 11)
{
	alarm[0] = 75;
}
else
if(global.nivel == 12)
{
	alarm[0] = 80;
}
else
if(global.nivel == 13)
{
	alarm[0] = 85;
}
else
if(global.nivel == 14)
{
	alarm[0] = 90;
}
else
if(global.nivel == 15)
{
	alarm[0] = 95;
}
else
if(global.nivel == 16)
{
	alarm[0] = 100;
}
else{
	alarm[0] = 105;
}