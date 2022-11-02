/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
global.stun = 1;

image_xscale = 10;
image_yscale = 10;

stun_time = 150;
blind_time = 8;

alarm[0] = stun_time;
while(instance_number(o_enemy2_laser) > 0){
	instance_destroy(instance_find(o_enemy2_laser, 0));
}

while(instance_number(o_enemy3_laser) > 0){
	instance_destroy(instance_find(o_enemy3_laser, 0));
}
	

gpu_set_blendmode(bm_add);
alarm[1] = blind_time;