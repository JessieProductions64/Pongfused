/// @description Insert description here
// You can write your code in this editor

switch room {
	
	case rm_title:
		draw_sprite(spr_logo, 0, round(room_width/2), round((room_height/2) - 64 + (sin(bouncecount)*10)))
		bouncecount += 0.05
		
		draw_set_color(c_white)
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_C64Med)
		draw_text(room_width/2, 275, "SELECT A RIVAL!")
		
		draw_rectangle(271, 300, 582, 331, 1)
		draw_rectangle(272, 301, 581, 330, 1)
		
		draw_rectangle(271, 340, 582, 371, 1)
		draw_rectangle(272, 341, 581, 370, 1)
		
		draw_rectangle(271, 380, 582, 411, 1)
		draw_rectangle(272, 381, 581, 410, 1)
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_text(0, 0, "RIVAL: " + string(global.rival))
		
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
	
}