/// @description Insert description here
// You can write your code in this editor

event_inherited()

image_index = global.rival+1
curDir = -1
moveSpd = 3


//RIVAL OFFSETS
offset = 32 - (8 * global.rival)

// give the cpu a keyboard
key_down_hold = 0
key_up_hold = 0

// PONG VARIABLES
targetY = noone
ballDir = noone