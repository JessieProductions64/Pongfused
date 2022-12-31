// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function get_player_angle() {
	var _inst = instance_nearest(x, y, obj_player)
	return (-(_inst.y - y) + (angAmp * sign(angle)));
}
