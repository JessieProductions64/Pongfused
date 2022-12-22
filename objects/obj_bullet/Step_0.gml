/// @description Insert description here
// You can write your code in this editor

hspd += curDir
image_xscale = curDir
x += hspd

if (x > room_width) {
	instance_destroy()
}

if (x < 0) {
	instance_destroy()
}
