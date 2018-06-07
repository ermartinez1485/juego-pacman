/// @description Movimientos y Sprite etc. . .
// Movimientos del personaje
if keyboard_check(vk_right) && place_free(x+1,y) && place_snapped(16,16)
    {
	direction = 0;
	speed = v;
	}
	
if keyboard_check(vk_left) && place_free(x-1,y) && place_snapped(16,16)
	{
	direction = 180;
	speed = v;
	}
	
if keyboard_check(vk_up) && place_free(x,y-1) && place_snapped(16,16)
	{
	direction = 90;
	speed = v;
	}	
	
if keyboard_check(vk_down) && place_free(x,y+1) && place_snapped(16,16)
	{
	direction = 270;
	speed = v;
	}
	
//Verificar direccion y velocidad para cambiar el sprite
if speed > 0
    {
	image_speed = 1;	
	}
else
    {
    image_speed = 0;
	image_index = 0;
	}
	
	switch(direction)
	{
	case 0:
	sprite_index = spr_pacman_rigth;
	break;
	
    case 90:
    sprite_index = spr_pacman_up;
	break; 
	 
	case 180:
	sprite_index = spr_pacman_left;
	break
	
   case 270:
   sprite_index = spr_pacman_down;
   break
	}




