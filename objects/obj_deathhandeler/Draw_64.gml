/// @description Insert description here
// You can write your code in this editor

if (death == 0) {
	draw_sprite_ext(spr_cs_gameover, counter, 0, 0, 2, 2, 0, c_white, 1)
} else {
	draw_sprite_ext(spr_cs_gameover2, 0, 0, 0, 2, 2, 0, c_white, 1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(#fafbf6)
	draw_set_font(fnt_C64Big)
	draw_text(room_width/2 - 160, ((room_height/2) + sin(counter/10) * 10), "YOUR LOOSE\nGAME OVER!")
}

counter += 0.5