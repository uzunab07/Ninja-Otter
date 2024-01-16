/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_fisher_king)){
	draw_healthbar(700,8,990,50,obj_fisher_king.hp,c_black,c_red,c_lime,0,true,true);
	draw_set_color(c_lime);
	draw_set_font(fnt_hp);
	draw_text(700,55,"Boss Health");
}


