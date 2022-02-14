/// @description Insert description here
// You can write your code in this editor

// Assemble the word to access the right sprite
if obj_Player.hp < 10 {playerHealth = "spr_hp0" + string(obj_Player.hp);}
else{playerHealth = "spr_hp" + string(obj_Player.hp);}

// Change Sprite to correct amount of health

//show_debug_message(playerHealth);
//sprite_index = spr_hp0 + string(obj_Player.hp);

// Maybe improve this at some point
if obj_Player.hp == 0 {sprite_index = spr_hp00;}
if obj_Player.hp == 1 {sprite_index = spr_hp01;}
if obj_Player.hp == 2 {sprite_index = spr_hp02;}
if obj_Player.hp == 3 {sprite_index = spr_hp03;}
if obj_Player.hp == 4 {sprite_index = spr_hp04;}
if obj_Player.hp == 5 {sprite_index = spr_hp05;}