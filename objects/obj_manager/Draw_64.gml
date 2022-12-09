/// @description Insert description here
// You can write your code in this editor

if (room == rm_debug) {
	draw_set_font(fnt_nes)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	if (room_exists(d_roomNum)) {
		draw_set_font(fnt_title)
		draw_text(16, 0, "ROOM GOTO: " + string(room_get_name(d_roomNum)))
	}
}