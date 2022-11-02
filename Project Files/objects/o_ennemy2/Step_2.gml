/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
event_inherited();
if(hp <= 0){
	instance_create_layer(x, y, "Back_Effets", o_enemy2_death);
	score += 2;
	instance_destroy();
}