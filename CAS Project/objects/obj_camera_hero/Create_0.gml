/// @description Insert description here
// You can write your code in this editor
view_width = 1920 / 1.1;
view_height = 1080 / 1.1;

window_scale = 1.1;

window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);