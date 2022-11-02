/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

score = 0;

hp = 6;

cd_attack_spe_initial = 120;
cd_attack_spe = cd_attack_spe_initial;

max_speed = 8;
acceleration = 0.4;
friction_amount = 0.15;

nb_bloc = 3;
bloc_cd = 15;

invinsible = 0;

global.stun = 0;

enum fire_bonus{
	NORMALE,
	EXPLOSIF,
	PUISSANT
}

fire_state = fire_bonus.NORMALE;

image_index = 0;
image_speed = 0;