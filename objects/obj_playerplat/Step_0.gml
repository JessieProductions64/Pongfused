/// @description Insert description here
// You can write your code in this editor

scr_get_input()

#region BEHAVIORS	
	var move = key_right - key_left
		
	if (key_up && grounded) {
		vspd = -12
	}
	
	if (key_down && is_grounded(obj_semisolid)) {
		while (is_grounded(obj_semisolid)) {
			y++
		}
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
		if (abs(hspd) > maxSpd) {
			hspd = approach(hspd, maxSpd * curXDir, accSpd)
		}
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
	
	if (key_attack_pressed) {
		hspd = dashSpd * curXDir
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
	
	
	grounded = max(0, is_grounded(obj_border), is_grounded(obj_semisolid))
	
	if (y > room_height) {
		global.playerHealth -= 10
		instance_create_layer(spawnx, spawny, layer, obj_playerplat)
		instance_destroy()
	}

#endregion
