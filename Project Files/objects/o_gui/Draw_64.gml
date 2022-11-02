/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var player = instance_find(o_ship, 0);
if player = noone exit;

display_set_gui_size(1280, 720);

//nb_bloc du joueur
var _b_x = 10;
var _b_y = 5;
draw_sprite(s_gui_bloc, player.nb_bloc, _b_x, _b_y);

//hp du joueur

var _hp_x = room_width/2 - sprite_get_width(s_gui_hp)/2 ;
var _hp_y = 5;
draw_sprite(s_gui_hp, player.hp, _hp_x, _hp_y);

// score
var _score_x = room_width - sprite_get_width(s_score_gui) - 10;

draw_sprite(s_score_gui, 0, _score_x, 5);

draw_set_font(Font1);
//draw_text(_score_x + 10, 5, "Score : ");

draw_set_halign(fa_center);
draw_text(_score_x + 70, 17, score);
draw_set_halign(fa_left);
