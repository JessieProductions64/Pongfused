/// @description Insert description here
// You can write your code in this editor

if (x >= room_width) {
	x = -sprite_width
}

vspd += global.platGrav

if (room != rm_title) {
	depth = -255
	image_alpha -= .05 
	
} else {
	if (place_meeting(x, y + vspd , obj_border)) {
		var _inst = instance_place(x, y + vspd , obj_border)
		
		y = _inst.y
		while (place_meeting(x, y, _inst)) {
			y -= sign(vspd)
		}
		vspd = -14
	}

	/*if (place_meeting(x + hspd , y, obj_border)) {
		var _inst = instance_place(x + hspd , y, obj_border)
		
		x = _inst.x
		while (place_meeting(x, y, _inst)) {
			x -= sign(hspd)
		}
		hspd = -hspd
	}*/
}

x += hspd 
y += vspd 


if (image_alpha <= 0) {
	instance_destroy()
}
