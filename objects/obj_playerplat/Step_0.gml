/// @description Insert description here
// You can write your code in this editor

scr_get_input()

#region BEHAVIORS	
	var move = key_right - key_left
		
	if (key_up && grounded) {
		vspd = -12
	}
		
	if (vspd < 0 && !key_up_hold) {
		vspd += global.platGrav
	}
		
	if (!grounded) {
		vspd += global.platGrav 
		vspd = clamp(vspd, -9, 9 )
	}
		
	if (move != 0) {	
		hspd += move * accSpd
		hspd = clamp(hspd, -maxSpd , maxSpd )
		curXDir = move
	} else {
		if (hspd - accSpd > 0) {
			hspd -= accSpd
		} else if (hspd + accSpd < 0) {
			hspd += accSpd
		} else {
			hspd = 0
		}
			
	}
	
	scr_collision()
	
	if (collision_rectangle(x - (8 * sign(hspd)), y - 32, x + (8 * sign(hspd)), y + 32, obj_ball, 0, 1)) {
		with (instance_nearest(x + (8 * sign(hspd)), y, obj_ball)) {
			ballSpd += abs(other.hspd)
			if (sign(hspd) != sign(other.hspd)) {
				curDir = -curDir
			}
		}
	}
	
	x += hspd
	y += vspd
	
	if (place_meeting(x, y + 1, obj_border)) {
		grounded = 1
	} else if (place_meeting(x, y + 1, obj_semisolid)) {
		grounded = 1	
	} else {
		grounded = 0
	}
	
	if (y > room_height) {
		instance_create_layer(spawnx, spawny, layer, obj_playerplat)
		global.playerHealth -= 12
		instance_destroy()
	}

#endregion