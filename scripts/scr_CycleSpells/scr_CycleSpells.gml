// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cycleSpells(){
if spellNumber <= global.totalSpells and global.totalSpells > 0{	
	spellNumber += 1;
	activeSpell = global.spellList [spellNumber];
}

if spellNumber = global.totalSpells{
	spellNumber = 0;
}

}