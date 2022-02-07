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

if roomwarp {TransitionStart(rm_Test1,sq_FadeIn,sq_FadeOut);}

// Debug Reboot
if keyboard_check(ord("R")) and (ord("B")){
	room = rm_TitlePage;
}

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

// Change sprite to walk in the right direction
if left{
	sprite_index = spr_WalkLeft;
}
if right{
	sprite_index = spr_WalkRight;
}
if down{
	sprite_index = spr_WalkDown;
}
if up{
	sprite_index = spr_WalkUp;
}

// Switch to Standing Sprite when not holding movement key
if sprite_index == spr_WalkLeft and not left {
	sprite_index = spr_StandLeft;
}
if sprite_index == spr_WalkRight and not right {
	sprite_index = spr_StandRight;
}
if sprite_index == spr_WalkDown and not down {
	sprite_index = spr_StandDown;
}
if sprite_index == spr_WalkUp and not up {
	sprite_index = spr_StandUp;
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
	global.score += 50;
}

// Cast A Spell
if magic {
	if activeSpell == "Fireball" {
		instance_create_depth(x,y,0,obj_Fireball);
	}
	if activeSpell == "Laser"{
		instance_create_depth(x,y,0,obj_Laser);
	}
	if activeSpell == "Ice"{
		instance_create_depth(x,y,0,obj_Ice);
	}
}

// Cycle through all of your collected spells
if switchSpell and spellNumber <= totalSpells and totalSpells > 0{	
	spellNumber += 1;
	activeSpell = spellList [spellNumber];
}

if spellNumber = totalSpells{
	spellNumber = 0;
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
