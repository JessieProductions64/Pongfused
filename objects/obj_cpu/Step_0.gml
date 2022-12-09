/// @description Insert description here
// You can write your code in this editor

switch room {
	case rm_pong:
		//y = mouse_y
		vspd = mouse_y - y
		
	break;
	
	case rm_hockey:
		x = mouse_x
		sprRot = 90
	break;

}

switch global.rival {
	case 0:
		sprite_index = spr_sherif
	break
}

if (hspd != 0) {
	image_xscale = sign(hspd)
}
y += vspd