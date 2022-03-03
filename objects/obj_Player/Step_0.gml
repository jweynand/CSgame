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
x = x + xVector;

scr_Collisions();

// Change Speed When Sprinting
if sprint {xySpeed = 8;}
else {xySpeed = 4;}

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
updatePlayerSprite();

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
	castSpell(activeSpell);
}

// Cycle through all of your collected spells
if switchSpell {
	cycleSpells();
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
