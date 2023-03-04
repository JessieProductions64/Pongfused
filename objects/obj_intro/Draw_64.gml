/// @description Insert description here
// You can write your code in this editor

switch introstate {
	
	case 2:
		textOff = approach(textOff, 64, 1)
		draw_sprite_ext(logospr, count, room_width/2 + (textOff*4-24), room_height/2, 2, 2, 0, c_white, alpha)
		alpha += 0.01
		
		if (alpha == 1.75) {
			logospr = spr_sinislosionspin
			count = 0
		}
		
		if (logospr == spr_sinislosionspin) {
			if (count >= 18) {
				alarm_set(2, 120)
				logospr = spr_sinislosionidle
				
			}
		}
		
	break;
	
	case 3:
		draw_sprite_ext(logospr, count, room_width/2 + (textOff*4-24), room_height/2, 2, 2, 0, c_white, alpha)
		draw_sprite_ext(spr_sinislosiontext, 0, room_width/2 - textOff, room_height/2, 2, 2, 0, c_white, alpha)
		alpha -= 0.01
		
		if (alpha == 0) {
			introstate = 4
		}
		
	break;
	
	case 4:
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_alpha(alpha)
		draw_set_font(fnt_C64Med)
		draw_text_ext(room_width/2, room_height/2, "ALL CHARACTERS AND EVENTS IN THIS GAME, EVEN THOSE BASED ON FAKE PEOPLE, ARE ENTIRELY FACTUAL. EVERYTHING IN THIS STORY IS ABSOLUTELY TRUE. ALL CELEBRITY VOICES ARE IMPERSONATED BY THEMSELVES. THE FOLLOWING GAME CONTAINS REFERENCES TO BOOZE AND ALCOHOL AND DUE ITS CONTENT SHOULD NOT BE PLAYED BY ANYONE. \n \n PRESS X TO CONTINUE", 24, room_width - 128)
		alpha += 0.1
		
	break;
	
	case joestyle:
		draw_sprite_ext(spr_joemama, 0, 0, 0, 2, 2, 0, c_white, alpha)
		alpha += 0.005
	break;
	
	
}

if ((introstate == 1) or (introstate == 2)) {
	draw_sprite_ext(spr_sinislosiontext, 0, room_width/2 - textOff, room_height/2, 2, 2, 0, c_white, 1)
}

count += 0.15

