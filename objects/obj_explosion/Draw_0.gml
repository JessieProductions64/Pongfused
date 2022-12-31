/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, 0, irandom_range(x - 4, x + 4), irandom_range(y - 4, y + 4), 2, 2, 0, c_white, alpha)

if (diss == 1) {
	alpha -= 0.1
}

if (alpha <= 0) {
	instance_destroy()
}


