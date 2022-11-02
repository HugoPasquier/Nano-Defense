/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var _x = camera_get_view_x(view_camera[0]) + random_range(-puissance, puissance);
var _y = camera_get_view_y(view_camera[0]) + random_range(-puissance, puissance);


camera_set_view_pos(view_camera[0], _x, _y);