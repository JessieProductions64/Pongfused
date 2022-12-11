/// @description Insert description here
// You can write your code in this editor

hspd = lengthdir_x(hspd, curDir)

if (x > room_width) {
	instance_destroy()
}

if (x < 0) {
	instance_destroy()
}

if (y > room_height) {
	instance_destroy()
}

if (y < 0) {
	instance_destroy()
}

vspd += global.platGrav

clamp(vspd, global.platGrav, 8)
