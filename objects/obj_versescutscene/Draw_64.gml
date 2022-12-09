/// @description Insert description here
// You can write your code in this editor

switch cutscene {
	case 0:
		draw_sprite_ext(spr_cs_vsstart, cutscene_frame, 0, 0, 2, 2, 0, c_white, 1)
		if (cutscene_frame < (sprite_get_number(spr_cs_vsstart)) - 1) {
			cutscene_frame += 0.15
		}
	break;
	
	case 1:
		draw_sprite_ext(spr_cs_vsbg, 0, 0, 0, 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_cs_ping, 0, pingX, 0, 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_cs_rival, rival, rivaX, 0, 2, 2, 0, c_white, 1)
		pingX = lerp(pingX, 0, .15)
		rivaX = lerp(rivaX, 0, .15)
		
	break;

}

if (flash > 0) {
	flash -= 0.01
}

draw_sprite_ext(spr_white, 0, 0, 0, room_width, room_height, 0, c_white, flash)