/// @description Insert description here
// You can write your code in this editor

switch room {
	
	case rm_title:
		draw_sprite_ext(spr_logo, 0, round(room_width/2), round((room_height/2) - 32 + round(sin(bouncecount)*10)), 2, 2, 0, c_white, 1)
		bouncecount += 0.05
		
		draw_set_color(c_white)
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_C64Med)
		draw_text(room_width/2, 380, "PRESS Z TO PLAY")
		
	break;
	
	case rm_debug:
		draw_set_font(fnt_C64)
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	
		if (room_exists(d_roomNum)) {
			draw_set_font(fnt_title)
			draw_text(16, 0, "ROOM GOTO: " + string(room_get_name(d_roomNum)))
		}
	break;
	
	case rm_rivalselect:
		
		rivals[0] = 0 
		rivals[1] = 120
		rivals[2] = 240
		rivals[3] = 360
		
		for (var i = 0; i < array_length(rivals); i++) {
			draw_sprite_ext(spr_rivalselect, i, 0, rivals[i], 2, 2, 0, c_white, 1)
		}
	
	break;
	
}