function scr_get_input(){
	key_up = keyboard_check_pressed(vk_up)
	key_up_hold = keyboard_check(vk_up)
	key_down = keyboard_check_pressed(vk_down)	
	key_down_hold = keyboard_check(vk_down)	
	key_left = keyboard_check(vk_left)
	key_right = keyboard_check(vk_right)
	
	key_select = keyboard_check(ord("Z"))
	key_attack = keyboard_check(ord("X"))
	key_attack_pressed = keyboard_check_pressed(ord("X"))
}