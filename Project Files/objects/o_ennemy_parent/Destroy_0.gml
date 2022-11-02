/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var drop_chance_life = 0.10;
var drop_chance_bloc = 0.05;

if(random(1) < drop_chance_bloc){
	instance_create_layer(x, y, "Back_Effets", o_bloc_item);	
}else{
	if(random(1) < drop_chance_life){
		instance_create_layer(x, y, "Back_Effets", o_life_item);	
	}		
}
