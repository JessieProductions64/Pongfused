/// @description Insert description here
// You can write your code in this editor

if (global.curScoreAdd != 0) {
	global.curScore += sign(global.curScoreAdd)
	global.curScoreAdd -= sign(global.curScoreAdd)
}

switch room {
	case sherif_1:
		curLevelScr = lvl_sherif
	break;
}

if (curLevelScr != noone) {
	script_execute(curLevelScr)
}