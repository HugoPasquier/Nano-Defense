/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

player = instance_find(o_ship, 0);
if(player = noone) exit

image_angle = point_direction(x, y, player.x, player.y);
speed = 4;
direction = image_angle;
