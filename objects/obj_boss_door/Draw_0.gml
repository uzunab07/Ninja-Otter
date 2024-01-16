/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_boss_door,0,x,y);
if (instance_place(x,y,obj_player) and global.saved_otters < 4){
	//draw_sprite(spr_boss_door,0,x,y);
	draw_set_color(c_lime);
	draw_set_font(fnt_warning);
	//draw_set_halign(fa_center);
	draw_text(x-2000, y-200,"There are 4 hostage otters!\nSave " + string(4 - global.saved_otters) + " more otter(s) to gain\naccess to the boss room!");
}