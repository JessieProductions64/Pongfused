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
		draw_sprite_ext(spr_cs_rivaltext, 0, logoX + irandom_range(-2, 2), -64 + irandom_range(-2, 2), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_cs_rivaltext, global.rival+1, logo2X + irandom_range(-4, 4), -64 + irandom_range(-2, 2), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_cs_ping, 0, pingX, 0, 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_cs_rival, global.rival, rivaX, 0, 2, 2, 0, c_white, 1)
		
		logoX = approach(logoX, (room_width/4) - 32, 2)
		logo2X = approach(logo2X, ((room_width/4) * 3) + 32, 2)
		pingX = approach(pingX, 0, 4)
		rivaX = approach(rivaX, 0, 4)
		
		
	break;

}

if (flash > 0) {
	flash -= 0.01
}

draw_sprite_ext(spr_white, 0, 0, 0, room_width, room_height, 0, c_white, flash)