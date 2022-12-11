function scr_get_input(){
	key_up = keyboard_check_pressed(ord("W"))
	key_up_hold = keyboard_check(ord("W"))
	key_down = keyboard_check_pressed(ord("S"))	
	key_down_hold = keyboard_check(ord("S"))	
	key_left = keyboard_check(ord("A"))
	key_right = keyboard_check(ord("D"))
}