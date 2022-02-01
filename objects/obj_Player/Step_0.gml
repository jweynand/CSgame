/// @description Insert description here
// You can write your code in this editor
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
down = keyboard_check(vk_down);
up = keyboard_check(vk_up);
sprint = keyboard_check(ord("Z"));
jump = keyboard_check_pressed(vk_space);
interact = keyboard_check_pressed(ord("A"));
magic = keyboard_check_pressed(ord("C"));
switchSpell = keyboard_check_pressed(ord("X"));
roomwarp = keyboard_check_pressed(vk_enter);

if roomwarp {room = Room2;}

// Horizontal Movement
xDirection = right - left;
yDirection = down - up;
xVector = xDirection * xySpeed;

	//Horizontal Collision
if place_meeting(x + xVector,y,obj_Grass){
	while !place_meeting(x + xVector,y,obj_Grass){
		x = x + xDirection;
	}
	// Otherwise
	xVector = 0;
}

// Change Speed When Sprinting
if sprint {xySpeed = 8;}
else {xySpeed = 4;}

x = x + xVector;

//Vertical Movement
yVector = yVector + grv;
if place_meeting(x,y + yVector,obj_Grass){
	while !place_meeting(x,y + sign(yVector),obj_Grass){
		y = y + sign(yVector);
	}
	// Otherwise
	yVector = 0;
}

// Choose Between Gravity and Up/Down Controls
if global.grav {y = y + yVector;}
else {
	yVector = yDirection * xySpeed;
	y = y + yVector;
	}


// Jump
if place_meeting(x,y+1,obj_Grass) and jump {
	yVector = jumpForce;
}

// Check if you're touching an enemy (just a useful variable)
if place_meeting(x,y,obj_Enemy){
	touchingEnemy = true;
}

else {
	touchingEnemy = false;
}

// Invincibility Frames
if invincible == true{
	invincibleTime = invincibleTime - 1;
	if invincibleTime <= 0{
		invincible = false;
		sprite_index = spr_Player;
		invincibleTime = 60;
	}
}

if hp <= 0 {
	PlayerDefeated();
}

// Collide With Coin

if place_meeting(x,y,obj_Coin){
	global.coins ++;
}

// Cast A Spell
if magic {
	if activeSpell == "Fireball" {
	instance_create_depth(x,y,0,obj_Fireball);
	}
	if activeSpell == "Laser"
	instance_create_depth(x,y,0,obj_Laser);
}

// Switch Your Active Spell
if switchSpell {
	if activeSpell = "Fireball" {
		activeSpell = "Laser"
	}
	else {
	activeSpell = "Fireball";
	}
}

// Aim the spells
if left{
	aim = "left";
}
if right{
	aim = "right";
}
if down{
	aim = "down";
}
if up{
	aim = "up";
}
