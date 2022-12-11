/// @description Insert description here
// You can write your code in this editor

#region BEHAVIORS	
	hspd = mouse_x - x
#endregion

if (collision_rectangle(x - (32 * sign(hspd)), y - 9, x + (32 * sign(hspd)), y + 9, obj_ball, 0, 1)) {
	with (instance_nearest(x + (8 * sign(hspd)), y, obj_ball)) {
		ballSpd += abs(other.hspd)
		if (sign(hspd) != sign(other.hspd)) {
			curDir = -curDir
		}
	}
}

x += hspd