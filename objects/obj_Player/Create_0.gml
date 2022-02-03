/// @description Insert description here
// You can write your code in this editor
xySpeed = 4;
xDirection = 0;
xVector = xySpeed * xDirection;
yDirection = 0;
yVector = 0;
grv = 0.4;
jumpForce = -13;

touchingEnemy = false;
hp = 3;
invincible = false;
invincibleTime = 60;

global.coins = 0;
totalScore = 0;

switchSpell = false;
activeSpell = "Fireball";
aim = "up";
spellList = ["none", "Fireball", "Laser"];

instance_create_depth(x,y,0,hud_ActiveSpell);

hudTimer = 60;

if room == rm_Test0 {global.grav = true;}
if room == rm_Test1 {global.grav = false;}