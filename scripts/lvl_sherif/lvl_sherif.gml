// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lvl_sherif(){
	
	switch room {
		case sherif_1:
			if (!instance_exists(obj_ball)) {
				instance_create_depth(room_width/2, room_height/2, obj_ball)
			}
			
			if (global.curScore >= 16) {
				audio_play_sound(mus_sherif, 1, 1)
				message = "FIGHT LIKE COWBOYS"
				room_goto(sherif_2)
			}
			
		break;
	
	}
}