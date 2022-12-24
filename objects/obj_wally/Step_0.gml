/// @description Insert description here
// You can write your code in this editor

vspd += global.platGrav

if (place_meeting(x, y + vspd, obj_border)) {
	while (!place_meeting(x, y + sign(vspd), obj_border)) {
		y += sign(vspd)
	}
	
	vspd = -14
	image_yscale = lerp(image_yscale, 1, .5)
	image_xscale = lerp(image_xscale, 3, .5)
	
	
	global.cameraShake = 2
	global.cameraShakeMag = .25
	
	audio_play_sound(snd_wallybouncewall, 1, 0)
	
}

if (place_meeting(x + hspd, y, obj_border)) {
	while (!place_meeting(x + sign(hspd), y, obj_border)) {
		x += sign(hspd)
	}
	
	hspd = -hspd
	
	global.cameraShake = 2
	global.cameraShakeMag = .25
	
	audio_play_sound(snd_wallybouncefloor, 1, 0)
	
}

if (place_meeting(x, y, obj_bullet)) {
	red = 1
	with (instance_nearest(x, y, obj_bullet)) {
		other.hspd += obj_bullet.hspd
		instance_destroy()
	}
}

if (image_xscale != 2) {
	image_xscale = lerp(image_xscale, 2, .25)
}

if (image_yscale != 2) {
	image_yscale = lerp(image_yscale, 2, .25)
}

red = lerp (red, 0, .05)

x += hspd
y += vspd