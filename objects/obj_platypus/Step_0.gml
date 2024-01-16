/// @description Insert description here
// You can write your code in this editor

// Keeps track of most current horizontal speed
if (hspeed != 0) {
	recent_hspeed = hspeed;
	recent_imagespeed = image_speed;
}
if (canattack == false) {
	hspeed = 0;
	//image_speed = 0;
}
else {
	hspeed = recent_hspeed;
	image_speed = recent_imagespeed;
}

frames_since_last_attack++;
// If the player is close enough and canattack is true, stop and attack
if (abs(obj_player.x - x) <= sense_distance and abs(obj_player.y - y) <= sense_distance and canattack == true and frames_since_last_attack >= waiting_period1){
	// Create an attack object half the sense distance in front of the enemy
	attack_id = instance_create_layer(x + ((sense_distance / 3) * image_xscale), y, "Instances", obj_enemy_attack);
	sprite_index = spr_platypus_scratch;
	canattack = false;
	alarm[0] = obj_enemy_attack.attackduration;
	frames_since_last_attack = 0;
}

