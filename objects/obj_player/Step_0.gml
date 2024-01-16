/// @description Insert description here
// You can write your code in this editor

if (hp <= 0){
	instance_destroy();
}

if (canattack == true) {
	//Walking
	if (keyboard_check(vk_right) and (!instance_place(x+100,y,obj_block))) {
		sprite_index = spr_player_walk;
		x += hsp;
		image_xscale = 1;
		if (!audio_is_playing(snd_walking)){
		audio_play_sound(snd_walking, 1000, false);
		}
		
		
		//image_speed = 10;
	}else if(keyboard_check(vk_left)and (!instance_place(x-100,y,obj_block))) {
		sprite_index = spr_player_walk;
		x -= hsp;
		image_xscale = -1;
		if (!audio_is_playing(snd_walking)){
		audio_play_sound(snd_walking, 1000, false);
		}
		
		//image_speed = 10;
	}else {
		sprite_index = spr_player;
		//image_speed = 10;
	}
		
	//Sprinting
	if(keyboard_check(vk_shift)){
		
		if (keyboard_check(vk_right) and (!instance_place(x+100,y,obj_block))) {
			sprite_index = spr_player_run;
			x += sprint;
			image_xscale = 1;
			
			add = current_time/2000;
			//image_speed = 20;
		}else if(keyboard_check(vk_left)and (!instance_place(x-100,y,obj_block))) {
			sprite_index = spr_player_run;
			x -= sprint;
			image_xscale = -1;
			
			add = current_time/2000;
			//image_speed = 20;
		}else {
			sprite_index = spr_player;
			//image_speed = 10;
		}
	}
	


	// Jumping 
	if(keyboard_check(vk_up)){
		if (!audio_is_playing(snd_jump)){
		audio_play_sound(snd_jump, 1000, false);
		}
		if(instance_place(x,y+1,obj_block))
			vspeed = jump_height;
	}

	if(instance_place(x,y+1,obj_block)) {
			gravity = 0;
	}
	else {
			gravity = 1.2;
	}

	// Limiting  the vspeed 
	if(vspeed >= 50) {
		vspeed = 50;
	}
	
	if(instance_exists(obj_player)){

	// Attacking
	if (keyboard_check_pressed(ord("Z"))) {
		instance_create_layer(x + (550 * image_xscale), y, "Instances", obj_player_attack)
		canattack = false;
		alarm[1] = obj_player_attack.attackduration;
		sprite_index = spr_player_twitch;
		audio_play_sound(snd_cut, 900, false);
	}
	}
}

else {
	hspeed = 0;
	vspeed = 0;
}

// Cheats
// Skip saving otters
if (keyboard_check_pressed(ord("A"))) {
	global.saved_otters = 4;
}
// Full health
if (keyboard_check_pressed(ord("B"))) {
	hp = 100;
}
// Skip to boss room
if (keyboard_check_pressed(ord("C"))) {
	room_goto(3);
}

// Game Restart
if (keyboard_check_pressed(ord("R"))){
	room_restart();
}