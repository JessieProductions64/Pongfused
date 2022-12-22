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
			instance_destroy()
		}
		
		if (sign(curplayer.x - mouse_x) != 0) {
			curdiraim = -(sign(curplayer.x - mouse_x))
		}
		
		y = curplayer.y
		x = curplayer.x + (32 * curdiraim)
		
		if (mouse_check_button_pressed(mb_left)) {
			with (instance_create_layer(x + (6 * curdiraim), y, layer, obj_bullet)) {
				curDir = other.curdiraim
				hspd = 6 * (curDir)
			}
		}
		
		image_xscale = curdiraim
	
	break;
}



