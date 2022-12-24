/// @description Insert description here
// You can write your code in this editor

//if (instance_exists(obj_player) or instance_exists(obj_playerplat)) {
//	draw_set_font(fnt_C64)
//	draw_text(0, 0, "PHEALTH: " + string(global.playerHealth))
//	draw_text(0, 8, "EHEALTH: " + string(global.enemyHealth))
//	draw_text(0, 16, "SCORE: " + string(global.curScore))
//}

if (showhud == 1) {
	draw_sprite_ext(spr_hud, 0, 0, 0, 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_healthbg, healthcount, 378, 68, -(playerprevhealth / 25), 1, 0, c_white, 1)
	
	pal_swap_set(spr_health_palette, 1, 0)
	draw_sprite_ext(spr_healthbg, healthcount, 474, 68, (enemyprevhealth / 25), 1, 0, c_white, 1)
	pal_swap_reset()
	
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	draw_set_font(global.scoreFont)
	draw_text(425, 80, string(global.curScore))
	
	if (global.playerHealth != playerprevhealth) {
		playerprevhealth = lerp(playerprevhealth, global.playerHealth, .5)
	}
	
	if (global.enemyHealth != enemyprevhealth) {
		enemyprevhealth = lerp(enemyprevhealth, global.enemyHealth, .5)
	}
	
}

healthcount += .1

if (healthcount > 5) {
	healthcount = 0
}