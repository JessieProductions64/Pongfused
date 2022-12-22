// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playmusic(_music){
	if (!audio_is_playing(_music)) {
		audio_play_sound(_music, 1, 1)
	}
}