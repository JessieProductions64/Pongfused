/// @description Insert description here
// You can write your code in this editor

function get_ball_y_target() {
	var _b = instance_nearest(x, y, obj_ball)
	var _hspd = _b.hspd
	var _vspd = _b.vspd
	var _newY = 0
	var  _dist = (x - _b.x)
	var i = 0
	
	while ((_hspd * i) < _dist) {
		i++
		_newY = _b.y + (_vspd * i)
		
	}
	
	//_newY += irandom_range(-offset, offset)

	show_debug_message(_newY, "NEW Y = " + string(_newY))
	
	return _newY;
	
}

switch global.cpuStyle {
	
	case 0:
		// PONG STYLE
		if (instance_exists(obj_ball)) {
			
			var _b = instance_nearest(x, y, obj_ball)
			
			if (sign(_b.hspd)) {
				if (targetY == noone) {
					targetY = get_ball_y_target()
				}
				
				if (ballDir == noone) {
					ballDir = _b.angle
				}
				
				if (ballDir != _b.angle) {
					targetY = get_ball_y_target()
				}
			
			#region movement code
				var _move = key_down_hold - key_up_hold
			
				if (y < targetY - 4) {
					key_down_hold = 1
				} else if (y > targetY + 4) {
					key_up_hold = 1
				}
			
		
				if (_move != 0) {	
					vspd += _move * accSpd
					vspd = clamp(vspd, -maxSpd , maxSpd )
					curYDir = _move
				} else {
					if (vspd - accSpd > 0) {
						vspd -= accSpd
					} else if (vspd + accSpd < 0) {
						vspd += accSpd
					} else {
						vspd = 0
					}
			
				}
			#endregion
		
			y = clamp(y, 0, room_height)
			
			} else {
				targetY = noone
				key_down_hold = 0
				key_up_hold = 0
			}
		
		}
		
	break;

}

image_xscale = curDir

y += vspd