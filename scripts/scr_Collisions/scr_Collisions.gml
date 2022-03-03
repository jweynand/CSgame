// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Collisions(){
	//Horizontal Collision
	if place_meeting(x + xVector,y,obj_Grass){
		while !place_meeting(x + xVector,y,obj_Grass){
			x = x + xDirection;
		}
		// Otherwise
		xVector = 0;
	}

//Vertical Movement and Gravity
yVector = yVector + grv;
if place_meeting(x,y + yVector,obj_Grass){
	while !place_meeting(x,y + sign(yVector),obj_Grass){
		y = y + sign(yVector);
	}
	// Otherwise
	yVector = 0;
}

}