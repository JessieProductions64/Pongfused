/// @description Insert description here
// You can write your code in this editor

function get_player_angle() {
	var _inst = instance_nearest(x, y, obj_player)
	return (-(_inst.y - y) + (angAmp * sign(angle)));
}

function  get_player_xangle() {
	var _inst = instance_nearest(x, y, obj_player)
	return ((_inst.x - x - 90));
}

hspd = lengthdir_x(-ballSpd, angle) * curDir
vspd = lengthdir_y(-ballSpd, angle)

if (ballSpd > ballMax) {
	ballSpd -= 0.5
}

if (ballSpd > ballMin) {
	ballSpd -= 0.01
}

ballSpd = clamp(ballSpd, ballMin, ballMax+5)

x += hspd 

var _list = ds_list_create(),

// horizontal collisions
var _collisions = collision_rectangle_list(x - (4 * sign(hspd)), y - 4, x + (4 * sign(hspd)), y + 4, obj_ballborder, 0, 1, _list, 0)

if (_collisions) {
	var _rx = x
	if (hspd > 0) {
		for (var i = 0; i < _collisions; i++) {
			_rx = min(_rx, _list[| i].bbox_left + x - bbox_right)
		}
	} else if (hspd < 0) {
		for (var i = 0; i < _collisions; i++) {
			_rx = max(_rx, _list[| i].bbox_right + x - bbox_left)
		}
	}
	x = _rx
	
	curDir = -curDir
	
}

// horizontal player collisions
ds_list_clear(_list)
var _collisions = collision_rectangle_list(x - (4 * sign(hspd)), y - 4, x + (4 * sign(hspd)), y + 4, obj_player, 0, 1, _list, 0)

if (_collisions) {
	var _rx = x
	if (hspd > 0) {
		for (var i = 0; i < _collisions; i++) {
			_rx = min(_rx, _list[| i].bbox_left + x - bbox_right)
		}
	} else if (hspd < 0) {
		for (var i = 0; i < _collisions; i++) {
			_rx = max(_rx, _list[| i].bbox_right + x - bbox_left)
		}
	}
	var _p = instance_nearest(x, y, obj_player)
	x = _rx
	
	audio_stop_sound(snd_hit2)
	audio_play_sound(snd_hit2, 1, 0, 1, 0, random_range(1, 1.25), 0)

	
	curDir = -curDir
	angle = get_player_angle()
	ballSpd = random_range(ballMin, ballMax) + abs(_p.hspd)
	
}

y += vspd 

// vertical collisions
ds_list_clear(_list)
_collisions = collision_rectangle_list(x - 4, y - (4 * sign(vspd)), x + 4, y + (4 * sign(vspd)), obj_ballborder, 0, 1, _list, 0)

if (_collisions) {
	var _ry = y
	if (vspd > 0) {
		for (var i = 0; i < _collisions; i++) {
			_ry = min(_ry, _list[| i].bbox_top + y - bbox_bottom)
		}
	} else if (vspd < 0) {
		for (var i = 0; i < _collisions; i++) {
			_ry = max(_ry, _list[| i].bbox_bottom + y - bbox_top)
		}
	}
	y = _ry
	
	audio_stop_sound(snd_hit2)
	audio_play_sound(snd_hit2, 1, 0, 1, 0, random_range(1, 1.25), 0)
	
	angle = -angle
	
}

// vertical player collisions
ds_list_clear(_list)
_collisions = collision_rectangle_list(x - 4, y - (4 * sign(vspd)), x + 4, y + (4 * sign(vspd)), obj_player, 0, 1, _list, 0)

if (_collisions) {
	var _ry = y
	if (vspd > 0) {
		for (var i = 0; i < _collisions; i++) {
			_ry = min(_ry, _list[| i].bbox_top + y - bbox_bottom)
		}
	} else if (vspd < 0) {
		for (var i = 0; i < _collisions; i++) {
			_ry = max(_ry, _list[| i].bbox_bottom + y - bbox_top)
		}
	}
	y = _ry
	
	angle = -angle
	
}

ds_list_destroy(_list)