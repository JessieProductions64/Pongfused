/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y+1, obj_player) or keyboard_check(ord("O"))) {
	with (instance_create_layer(x, y - 16, layer, obj_ball)) {
		curDir = choose(1, -1)
		angle = random_range(-75, 75)
	}
	image_index = 1
}



