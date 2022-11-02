// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ship_take_damage(ship){
	
	if(ship.invinsible != 1){
		ship.hp --;	
		ship.invinsible = 1

	ship.sprite_index = S_ship_damage;
	ship.image_index = 0;
	ship.image_speed = 2;

	ship.alarm[0] = 60;
	instance_create_layer(x, y, "Effets", o_screen_shake);
	}
}