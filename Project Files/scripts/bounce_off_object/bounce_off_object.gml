///@arg objet
function bounce_off_object(argument0){
	var obj = argument0;
	var acceleration = 0.15;
	var max_speed = 4;
	
	motion_add(point_direction(obj.x, obj.y, x, y), acceleration);
	if(speed > max_speed){
		speed = max_speed;
	}
	
}