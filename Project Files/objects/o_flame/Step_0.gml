/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(image_alpha > 0){
	image_alpha -= fade_amount;	
}else{
	instance_destroy();	
}

if(speed > max_speed){
	speed = max_speed
}