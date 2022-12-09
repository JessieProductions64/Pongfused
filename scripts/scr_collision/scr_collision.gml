// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision(){
	
	if (place_meeting(x, y + vspd, obj_border)) {
		var _inst = instance_place(x, y + vspd , obj_border)
		
		y = _inst.y
		while (place_meeting(x, y, _inst)) {
			y -= sign(vspd)
		}
		
		vspd = 0
	}
	
	if (place_meeting(x + hspd, y, obj_border)) {
		var _inst = instance_place(x + hspd , y, obj_border)
		
		x = _inst.x
		while (place_meeting(x, y, _inst)) {
			x -= sign(hspd)
		}
	
		hspd = 0
	}
	
}