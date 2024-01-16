/// @description Insert description here
// You can write your code in this editor

if((keyboard_check(vk_left) or keyboard_check(vk_right))and keyboard_check(vk_shift)){
shader_set(Shader1);

shader_set_uniform_f(uni_time,add);

show_debug_message("In Here")

}

draw_self()
shader_reset()

