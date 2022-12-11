/// @description Insert description here
// You can write your code in this editor

// round stuff
global.curScore = 0
bouncecount = 0

// RIVALS
// 0 = SHERIF
// 1 = JOE BIDEN
// 2 = DOGMAN
// 3 = FINAL
global.rival = 0

d_roomNum = 0

global.scoreFont = font_add_sprite(spr_scorefnt, ord("0123456789"), 0, 8)

global.platGrav = .5

game_set_speed(60, gamespeed_fps)

pal_swap_init_system(shd_pal_swapper, shd_pal_html_sprite, shd_pal_html_surface)