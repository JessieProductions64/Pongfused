/// @description Insert description here
// You can write your code in this editor

switch active {
	case 0:
		counter++
		y = curY + (sin(counter/8) * 2)
		image_speed = 0.05
	break;
	
	case 1:
	
		image_speed = 0
		image_index = 0
		
		if (instance_exists(curplayer)) {
		
			if (sign(curplayer.x - mouse_x) != 0) {
				curdiraim = -(sign(curplayer.x - mouse_x))
			}
		
			y = curplayer.y
			x = curplayer.x + (32 * curdiraim)
			if (ammo > 0) {
				if (mouse_check_button_pressed(mb_left)) {
					with (instance_create_layer(x + (6 * curdiraim), y, layer, obj_bullet)) {
						curDir = other.curdiraim
						hspd = 6 * (curDir)
					}
					ammo--
					audio_play_sound(choose(snd_gun1, snd_gun2, snd_gun3, snd_gun4), 1, 0, .5, 0, random_range(1, 1.25), 1)
					global.cameraShake = 4
					global.cameraShakeMag = .5
				}
			} else {
				instance_destroy()
			}
		
			image_xscale = curdiraim
		
		} else {instance_destroy()}
	
	break;
}



