/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(instance_number(o_ennemy_parent) < 2 + score div (1+(score * 0.25))){
	//Enemy 1
	repeat(5 + score div (1+(score * 0.1))){
		len = random_range(room_width * 1.5, room_width * 2.5);
		angle = random(360);	
		var _x = lengthdir_x(len, angle);
		var _y = lengthdir_y(len, angle);
		instance_create_layer(_x, _y, "Instances", O_ennemy1);
	}
	
	
	repeat(3 + score div (1+(score * 0.2))){
		len = random_range(room_width * 1.5, room_width * 2);
		angle = random(360);	
		var _x = lengthdir_x(len, angle);
		var _y = lengthdir_y(len, angle);
		instance_create_layer(_x, _y, "Instances", o_ennemy2);
	}
	
	repeat(1 + score div (1+(score * 0.6))){
		len = random_range(room_width * 1.5, room_width * 2);
		angle = random(360);	
		var _x = lengthdir_x(len, angle);
		var _y = lengthdir_y(len, angle);
		instance_create_layer(_x, _y, "Instances", o_enemy3);
	}
	
}

