	// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision(){
	
	//if (place_meeting(x, y + vspd, obj_border)) {
	//	var _inst = instance_place(x, y + vspd , obj_border)
		
	//	y = _inst.y
	//	while (place_meeting(x, y, _inst)) {
	//		y -= sign(vspd)
	//	}
		
	//	vspd = 0
	//}
	
	//if (vspd > 0) {
	//	if (collision_rectangle(x - 8, y + 39, x + 8, y + 39 + vspd, obj_semisolid, 0, 1)) {
	//		var _inst = instance_place(x, y + vspd, obj_semisolid)
		
	//		y = _inst.y
	//		while (place_meeting(x, y, _inst)) {
	//			y -= sign(vspd)
	//		}
	
	//		vspd = 0
	//	}
	//}
	
	//if (place_meeting(x + hspd, y, obj_border)) {
	//	var _inst = instance_place(x + hspd , y, obj_border)
		
	//	x = _inst.x
	//	while (place_meeting(x, y, _inst)) {
	//		x -= sign(hspd)
	//	}
	
	//	hspd = 0
	//}
	
	x += hspd 

	var _list = ds_list_create(),

	// horizontal collisions
	var _collisions = collision_rectangle_list(x - (8 * sign(hspd)), y - 25, x + (8 * sign(hspd)), y + 39, obj_border, 0, 1, _list, 0)

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
		hspd = 0
	
	}
	
	// vertical collisions
	y += vspd 
	
	ds_list_clear(_list)
	_collisions = collision_rectangle_list(x - 8, y - (25 * sign(vspd)), x + 8, y + (39 * sign(vspd)), obj_border, 0, 1, _list, 0)

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
		vspd = 0
	
	}
	
	ds_list_clear(_list)
	_collisions = collision_rectangle_list(x - 8, y - (25 * sign(vspd)), x + 8, y + (39 * sign(vspd)), obj_semisolid, 0, 1, _list, 0)

	if (_collisions) {
		var _ry = y
		if (vspd > 0) {
			for (var i = 0; i < _collisions; i++) {
				_ry = min(_ry, _list[| i].bbox_top + y - bbox_bottom)
			}
		}
		
		if (is_grounded(obj_semisolid)) {
			y = _ry
			vspd = 0
		}
		
	
	}
	
	ds_list_destroy(_list)
	
}