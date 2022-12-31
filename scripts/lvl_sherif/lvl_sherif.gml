// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lvl_sherif(){
	
	switch room {
		case sherif_1:
			
			if (setup == 0) {
				audio_play_sound(snd_3minutesofcrickets, 1, 1)
				setup = 1
			}
		
			if (!instance_exists(obj_ball)) {
				instance_create_layer(room_width/2, room_height/2, layer, obj_ball)
			}
			
			if (global.curScore >= 6) {
				audio_play_sound(mus_sherif, 1, 1)
				audio_stop_sound(snd_3minutesofcrickets)
				message = "FIGHT LIKE COWBOYS"
				timecounter = 0
				room_goto(sherif_2)
				
			}
			
		break;
	
		case sherif_2:
		
			if (!instance_exists(obj_ball)) {
				instance_create_layer(room_width/2, room_height/2, layer, obj_ball)
			}
			
			if (timecounter == 500) {
				instance_create_layer(room_width/2, room_height/2, layer, obj_gun)
			}
			
			if (timecounter == 1800) {
				message = "FIGHT LIKE TENNIS"
				timecounter = 0
				room_goto(sherif_3)
			}
			
		break;
		
		case sherif_3:
			if (instance_exists(obj_ball)) {
				timecounter = 0
				
			} else {
					message = "NICE SHOT"
				if (timecounter == 120) {
					message = "FIGHT LIKE THE WIND"
					room_goto(sherif_4)
				}
			}

		break;
	
	}
}