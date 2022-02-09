/// @description HUD
// You can write your code in this editor

draw_text(1250,6,"Score: " + string(global.score));
draw_text(650,22,"Spell: ");

if !(left or right or down or up or jump){
	hudTimer --;
}
else{
	hudTimer = 120;
}

if hudTimer <= 60{
	draw_text(x-8,y-20,"Health: " + string(hp));
	draw_text(x-8,y-40,"Coins: " + string(global.coins));
}

if hudTimer <= -60{
	draw_text(0,0,"Press Escape To Show Controls");
}

if keyboard_check(vk_escape){
	draw_text(0,20,"Use Arrow Keys To Move");
	draw_text(0,40,"Space: Jump");
	draw_text(0,60,"Z: Sprint");
	draw_text(0,80,"A: Interact");
	draw_text(0,100,"C: Cast Spell");
	draw_text(0,120,"X: Switch Chosen Spell");
}