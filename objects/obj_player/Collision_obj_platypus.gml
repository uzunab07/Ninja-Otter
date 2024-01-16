/// @description Insert description here
// You can write your code in this editor

// If the player can be damaged
if (canbedamaged) {
	hp -= obj_platypus.dmg
	y -= 150
	canbedamaged = false
	alarm[0] = 120
}