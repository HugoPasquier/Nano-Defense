/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

bounce = 0.5;

var half_x_sprite = sprite_get_width(sprite_index)/2;
var half_y_sprite = sprite_get_width(sprite_index)/2;


if(x < half_x_sprite or x > room_width - half_x_sprite){
	x = xprevious;
	hspeed = - hspeed * bounce;
}

if(y < half_y_sprite or y > room_height - half_y_sprite){
	y = yprevious;
	vspeed = - vspeed * bounce;
}



//mort :
if(hp <= 0){
	instance_create_layer(x, y, "Effets", o_ship_death);
	instance_destroy();	
}

