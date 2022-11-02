/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(global.stun == 0 and (distance_to_object(o_ship) < player_range)){
	instance_create_layer(x + hspeed, y + vspeed, "Instances",o_enemy2_laser);
}

alarm[1] = fire_frequence;