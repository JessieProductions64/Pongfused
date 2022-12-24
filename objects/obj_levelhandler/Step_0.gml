/// @description Insert description here
// You can write your code in this editor

if (global.curScoreAdd != 0) {
	global.curScore += sign(global.curScoreAdd)
	global.curScoreAdd -= sign(global.curScoreAdd)
}

if (global.curScore < 0) {
	global.curScore = 0
}

switch room {
	case sherif_1:
		curLevelScr = lvl_sherif
	break;
	
	case biden_1:
		curLevelScr = lvl_biden
	break;
	
}

if (curLevelScr != noone) {
	script_execute(curLevelScr)
	showhud = 1
}



timecounter++