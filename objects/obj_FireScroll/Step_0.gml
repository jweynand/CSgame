/// @description Float Up And Down
// You can write your code in this editor


if floatingTimer > 0{
	vspeed = 0.2;
	floatingTimer --;
}
if floatingTimer < 30{
	vspeed = -0.2;
}
if floatingTimer = 0{
	floatingTimer = 60;
}