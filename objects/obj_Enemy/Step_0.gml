/// @description Insert description here
// You can write your code in this editor
if self.enemyHp <= 0{
	EnemyDefeated(100,obj_Coin,2);
}


yVector = yVector + grv;

if place_meeting(x,y + yVector,obj_Grass){
	while !place_meeting(x,y + sign(yVector),obj_Grass){
		y = y + sign(yVector);
	}
	// Otherwise
	yVector = 0;
}
y = y + yVector;