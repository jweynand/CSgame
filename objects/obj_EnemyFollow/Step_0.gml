/// @description Insert description here
// You can write your code in this editor
if self.enemyHp <= 0{
	global.score = +100;
	instance_destroy();
}

xDirection = sign(obj_Player.x - x);
xVector = xSpeed * xDirection;


if (abs(obj_Player.x - (x-1)) > 64) or (abs(obj_Player.x + (x+1)) > 64){
x = x + xVector;
}

if not global.grav{
	if obj_Player.y > y{
		y = y + 1;
	}

	else {
		y = y - 1;
	}
}

if stunned {
	stunTimer -= 1/room_speed
	if stunTimer <0 {
		stunTimer = 2;
		stunned = false;
		xSpeed = 2;
	}
}