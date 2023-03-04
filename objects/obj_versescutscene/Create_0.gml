/// @description Insert description here
// You can write your code in this editor


flash = 0

pingX = -256
rivaX = 256

logoX = (room_width/4) - 256
logo2X = ((room_width/4) * 3) + 256

cutscene = 0
cutscene_frame = 0
alarm_set(0, 60)
alarm_set(2, 240)

audio_play_sound(mus_round_start, 1, 0)