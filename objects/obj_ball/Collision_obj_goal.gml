/// @description Insert description here
// You can write your code in this editor

with(other) {
	if (isRivalGoal == 1) {
		global.curScoreAdd--	
	} else {
		global.curScoreAdd++
	}
}

audio_stop_sound(snd_hit2)
audio_play_sound(snd_hit2, 1, 0, 1, 0, random_range(1, 1.25), 0)
audio_stop_sound(snd_goal)
audio_play_sound(snd_goal, 1, 0)
global.cameraShake = 4
global.cameraShakeMag = .25
instance_destroy()

