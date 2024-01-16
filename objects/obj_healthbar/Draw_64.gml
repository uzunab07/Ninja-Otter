/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player)){
	if (room == rm_level) {
		draw_healthbar(8,8,300,50,obj_player.hp,c_black,c_red,c_lime,0,true,true);
		draw_set_color(c_lime);
		draw_set_font(fnt_hp);
		draw_text(10,55,"Otters Saved: "+ string(global.saved_otters));
	}
	else {
		draw_healthbar(8,8,300,50,obj_player.hp,c_black,c_red,c_lime,0,true,true);
		draw_set_color(c_lime);
		draw_set_font(fnt_hp);
		draw_text(10,55,"Health");
	}
}
