/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

player = instance_find(o_ship, 0);
if(player = noone) exit

var angle = random_range(-8, 8);

image_angle = point_direction(x, y, player.x, player.y) + angle;
speed = 3;
direction = image_angle;
