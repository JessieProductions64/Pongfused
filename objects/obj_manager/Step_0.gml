/// @description Insert description here
// You can write your code in this editor

scr_get_input()

#region menu functions and the like
	switch room {
		
		case rm_title:
			if (keyboard_check_pressed(ord("Z"))) {
				room_goto(rm_rivalselect)
			}
		break
		
		case rm_debug:
		
			if (keyboard_check(ord("Z"))) {
				room_goto(d_roomNum)
			}
	
			if (key_up) {
				d_roomNum++
			}
	
			if (key_down) {
				d_roomNum--
			}
		break;
		
		case rm_rivalselect:
			
			if (key_up) {
				global.rival--
			}
			
			if (key_down) {
				global.rival++
			}
		
			if (keyboard_check_pressed(ord("Z"))) {
				room_goto(rm_verses)
			}
		break;
	
	}

	if (keyboard_check(vk_space)) {
		audio_stop_all()
		room_goto(rm_debug)
	
	}
	
#endregion

for (var i = 0; i < array_length(roommusics); i++) {
	var o = roommusics[i]
	if (room == o[0]) {
		if (!audio_is_playing(o[1])) {
			audio_play_sound(o[1], 1, 1)
		}
	} else {
		audio_stop_sound(o[1])
	}

}
