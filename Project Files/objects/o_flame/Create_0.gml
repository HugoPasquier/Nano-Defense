/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var player = instance_find(o_ship, 0);

image_speed = 0;
image_index = 0;

size = random_range(0.5, 1.5);
max_speed = player.max_speed;

motion_add(player.direction, player.speed * random_range(0.85, 0.95));

image_xscale = size;
image_yscale = size;



image_angle = random_range(0, 360);
fade_amount = 0.2;