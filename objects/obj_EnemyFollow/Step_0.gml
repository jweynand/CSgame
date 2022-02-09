/// @description Insert description here
// You can write your code in this editor
if self.enemyHp <= 0{
	global.score = +100;
	instance_destroy();
}

xDirection = sign(obj_Player.x - x);
xVector = xSpeed * xDirection;
yVector = ySpeed * xDirection;


if (abs(obj_Player.x - (x-1)) > 64) or (abs(obj_Player.x + (x+1)) > 64){
x = x + xVector;
}

if not global.grav{
if obj_Player.y > y{
	y = y + 1;
}
}
else {
	y = y - 1;
}

if global.grav and not place_meeting(x,y,obj_Grass){
yVector = yVector + grv;
y = y - yVector;

if place_meeting(x,y,obj_EnemyBounce){
	yVector = 12;
}
}