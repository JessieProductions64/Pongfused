/// @description Insert description here
// You can write your code in this editor
audio_stop_all()

alpha = 0
textOff = 0
introstate = 0
logospr = spr_sinislosionwait
count = 0
joestyle = 500

randomize()
joemama = 1//irandom_range(0, 3)
random_set_seed(400195)

if (joemama = 1) {
	introstate = joestyle
	alarm_set(3, 500)
	audio_play_sound(snd_halloween4, 0, 1)
} else {
	alarm_set(0, 60)
}