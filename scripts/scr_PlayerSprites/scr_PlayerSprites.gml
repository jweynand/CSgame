// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updatePlayerSprite(){
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
}