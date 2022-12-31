// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reset(){
	global.cameraShake = 0
	global.cameraShakeMag = 0
	global.curScore = 0
	global.curScoreAdd = 0
	global.playerHealth = 100
	global.enemyHealth = 100
	global.rival = 0
	obj_levelhandler.showhud = 0
	obj_levelhandler.curLevelScr = noone
	audio_stop_all()
}