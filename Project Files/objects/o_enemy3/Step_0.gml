/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if(distance_to_object(o_ship) < range_detection){
	speed = 0;
	if(fire_rate_cd <= 0 and global.stun == 0){
		instance_create_layer(x + hspeed, y + vspeed, "Instances",o_enemy3_laser);
		fire_rate_cd = fire_rate_initial;
	}else{
		fire_rate_cd --;
	}
	
}else{
	move_to_player();
}