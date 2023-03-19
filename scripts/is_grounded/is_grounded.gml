// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_grounded(checkobj){
	return (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + max(abs(vspd), 1), checkobj, 0, 1));
}