/// @description
// You can write your code in this editor
// Detect when hitting the top of the enemy
if y <= other.y - other.sprite_height * 0.9 and global.grav{
	// Bounce
	yVector = jumpForce;
	other.enemyHp --;
}

else{
	PlayerDamaged(1);
}