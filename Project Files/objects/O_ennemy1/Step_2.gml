/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
event_inherited();
if(hp <= 0){
	instance_create_layer(x, y, "Back_Effets", o_enemy1_death);
	score ++;
	instance_destroy();
}

