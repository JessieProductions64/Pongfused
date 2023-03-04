/// @description Insert description here
// You can write your code in this editor

// round stuff
bouncecount = 0

// RIVALS
// these are set automatically when changing many variables.
// 0 = SHERIF
// 1 = JOE BIDEN
// 2 = DOGMAN
// 3 = FINAL

/*
How to create new rivals:
1. add a new image in the sprites "spr_cs_rival", "spr_cs_rivaltext", and "spr_pong"
2. create a new lvl script and add it to the level handler object's array list for the first room of the rivals
3. add a new destroom in the global array
*/

global.destroom[0] = sherif_1
global.destroom[1] = biden_1
global.destroom[2] = rm_pong
global.destroom[3] = rm_pong

global.rival = 0
roommusics = [ [rm_title, mus_title], [rm_debug, mus_abstract], [rm_rivalselect, mus_rivalselect], [rm_pissing, mus_test] ]

d_roomNum = 0

global.scoreFont = font_add_sprite(spr_scorefnt, ord("0123456789"), 0, 8)

global.platGrav = .5

game_set_speed(60, gamespeed_fps)

pal_swap_init_system(shd_pal_swapper, shd_pal_html_sprite, shd_pal_html_surface)