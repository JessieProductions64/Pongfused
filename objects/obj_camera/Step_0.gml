/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_playerplat)) {
	x = obj_playerplat.x
	y = obj_playerplat.y
} 

if (global.cameraShake > 0) {
	x = x + (irandom_range(global.cameraShake, -global.cameraShake))
	y = y + (irandom_range(global.cameraShake, -global.cameraShake))
	
	global.cameraShake -= global.cameraShakeMag
	
}

x = round(x)
y = round(y)