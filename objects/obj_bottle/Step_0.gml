/// @description Insert description here
// You can write your code in this editor

switch fly {
	case 0:
		if (collision_rectangle(x, 0, x + 64, room_height, obj_player, 0, 1)) {
			fly = 1
		}
	break;
	
	case 1:
		sprite_index = spr_bottlefly
		vspd =  irandom_range(-16, -10)
		audio_play_sound(snd_hit3, 1, 0)
		fly = 2
	break;
	
	case 2:
		if (vspd > 0) {
			if (place_meeting(x, y, obj_playerplat)) {
				instance_destroy()
			}
		}
		
		vspd += global.platGrav
		if (place_meeting(x, y+1, obj_ballborder)) {
			instance_destroy()
		}
	break;

}

y += vspd
