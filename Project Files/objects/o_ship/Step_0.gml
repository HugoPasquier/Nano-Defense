/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

/*
#region Camera
camera_set_view_pos(cam, x - camera_get_view_width(cam)/2, 
						 y - camera_get_view_height(cam)/2);

var cam = view_camera[0];
var _x = clamp(camera_get_view_x(cam), 0, room_width - camera_get_view_width(cam));
var _y = clamp(camera_get_view_y(cam), 0, room_height - camera_get_view_height(cam));

camera_set_view_pos(cam, _x, _y);
				
				

									
#endregion
*/
mouse_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = mouse_direction; 

//Pour avancer
if(mouse_check_button(mb_right)){
	if(invinsible != 1) image_index = 1;
	motion_add(mouse_direction, acceleration);
	if(speed > max_speed){
		speed = max_speed;
	}
	else{
		friction = friction_amount;	
	}
	
}else{
	if(invinsible != 1) image_index = 0;	
}





//Pour tirer des lasers :
if(mouse_check_button_pressed(mb_left)){
	var angle = 17;
	var len = 18;
	_x1 = x + lengthdir_x(len, point_direction(x, y, mouse_x, mouse_y) - angle);
	_y1 = y + lengthdir_y(len, point_direction(x, y, mouse_x, mouse_y) - angle);
	instance_create_layer(_x1 + hspeed, _y1 + vspeed, "Instances",o_laser_right);

	
	_x2 = x + lengthdir_x(len, point_direction(x, y, mouse_x, mouse_y) + angle);
	_y2 = y + lengthdir_y(len, point_direction(x, y, mouse_x, mouse_y) + angle);
	instance_create_layer(_x2 + hspeed, _y2 + vspeed, "Instances",o_laser_left);
	
	
}

//Blocage d'urgence
if(nb_bloc > 0 and keyboard_check_pressed(ord("F"))){
	instance_create_layer(x, y, "Effets", o_urgence_block);
	nb_bloc --;
	
}

//Attaque spéciale
if(cd_attack_spe <= 0 and keyboard_check(vk_space)){
	cd_attack_spe = cd_attack_spe_initial;
	//Attaque spéciale
	len = 30;
	degre_cone = 30;
	part = degre_cone/8
	// on prend 9 points de référence pour les lasers, sur un cône de 90° soit 9*10°
	_x = x + lengthdir_x(15, point_direction(x, y, mouse_x, mouse_y));
	_y = y + lengthdir_y(15, point_direction(x, y, mouse_x, mouse_y));
	#region P1
	p1_x = x + lengthdir_x(len, point_direction(x, y, mouse_x, mouse_y));
	p1_y = y + lengthdir_y(len, point_direction(x, y, mouse_x, mouse_y));
	l1 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l1.image_angle = image_angle;
	l1.direction = point_direction(l1.x, l1.y, p1_x, p1_y); 
	#endregion
	#region P2
	p2_direction = point_direction(x, y, mouse_x, mouse_y) + 4*part;
	p2_x = x + lengthdir_x(len, p2_direction);
	p2_y = y + lengthdir_y(len, p2_direction);
	l2 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l2.image_angle = p2_direction;
	l2.direction = point_direction(l2.x, l2.y, p2_x, p2_y); 
	#endregion
	#region P3
	p3_direction = point_direction(x, y, mouse_x, mouse_y) - 4*part;
	p3_x = x + lengthdir_x(len, p3_direction);
	p3_y = y + lengthdir_y(len, p3_direction);
	l3 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l3.image_angle = p3_direction;
	l3.direction = point_direction(l3.x, l3.y, p3_x, p3_y); 
	#endregion
	#region P4
	p4_direction = point_direction(x, y, mouse_x, mouse_y) + 2*part;
	p4_x = x + lengthdir_x(len, p4_direction);
	p4_y = y + lengthdir_y(len, p4_direction);
	l4 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l4.image_angle = p4_direction;
	l4.direction = point_direction(l4.x, l4.y, p4_x, p4_y); 
	#endregion
	#region P5
	p5_direction = point_direction(x, y, mouse_x, mouse_y) - 2*part;
	p5_x = x + lengthdir_x(len, p5_direction);
	p5_y = y + lengthdir_y(len, p5_direction);
	l5 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l5.image_angle = p5_direction;
	l5.direction = point_direction(l5.x, l5.y, p5_x, p5_y); 
	#endregion
	#region P6
	p6_direction = point_direction(x, y, mouse_x, mouse_y) + 3*part;
	p6_x = x + lengthdir_x(len, p6_direction);
	p6_y = y + lengthdir_y(len, p6_direction);
	l6 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l6.image_angle = p6_direction;
	l6.direction = point_direction(l6.x, l6.y, p6_x, p6_y); 
	#endregion
	#region P7
	p7_direction = point_direction(x, y, mouse_x, mouse_y) + part;
	p7_x = x + lengthdir_x(len, p7_direction);
	p7_y = y + lengthdir_y(len, p7_direction);
	l7 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l7.image_angle = p7_direction;
	l7.direction = point_direction(l7.x, l7.y, p7_x, p7_y); 
	#endregion
	#region P8
	p8_direction = point_direction(x, y, mouse_x, mouse_y) - part;
	p8_x = x + lengthdir_x(len, p8_direction);
	p8_y = y + lengthdir_y(len, p8_direction);
	l8 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l8.image_angle = p8_direction;
	l8.direction = point_direction(l8.x, l8.y, p8_x, p8_y); 
	#endregion
	#region P9
	p9_direction = point_direction(x, y, mouse_x, mouse_y) - 3*part;
	p9_x = x + lengthdir_x(len, p9_direction);
	p9_y = y + lengthdir_y(len, p9_direction);
	l9 = instance_create_layer(_x + hspeed, _y + vspeed, "Instances", o_special_laser);
	l9.image_angle = p9_direction;
	l9.direction = point_direction(l9.x, l9.y, p9_x, p9_y); 
	#endregion
	
}else{
	cd_attack_spe --;	
}
