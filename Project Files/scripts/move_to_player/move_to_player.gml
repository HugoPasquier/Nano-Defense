// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_player(){
	if(global.stun){
		speed = 0;	
	}else{
		
		player = instance_find(o_ship, 0);
		if(player == noone) exit;

		image_angle = point_direction(x, y, player.x, player.y);

		motion_add(image_angle, acceleration);
		if(speed > max_speed){
			speed = max_speed;
		}
	}
}