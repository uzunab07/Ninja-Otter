/// @description Insert description here
// You can write your code in this editor

up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
select_key = keyboard_check_pressed(vk_space)

pos += down_key - up_key;
if (pos >= op_length){
	pos = 0
}

if (pos < 0){
	pos = op_length - 1
}

if (select_key) {
	switch(pos){

	case 0:

		room_goto_next()

		break;


	case 1:

		room_goto(rm_controls)

		break;


	case 2:

		game_end();

		break;

	}
}