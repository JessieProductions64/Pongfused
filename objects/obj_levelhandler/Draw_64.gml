/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player) or instance_exists(obj_playerplat)) {
	draw_set_font(fnt_C64)
	draw_text(0, 0, "PHEALTH: " + string(global.playerHealth))
	draw_text(0, 8, "EHEALTH: " + string(global.enemyHealth))
	draw_text(0, 16, "SCORE: " + string(global.curScore))
}