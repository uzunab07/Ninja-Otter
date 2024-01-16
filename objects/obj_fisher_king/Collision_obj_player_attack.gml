/// @description Insert description here
// You can write your code in this editor

if (canbedamaged == true) {
	hp -= 20;
	canbedamaged = false;
	canattack = true;
	alarm[2] = 120;
	frames_since_last_attack = 0;
}
