// Set color.
// This will be a semi-transparent black.
//draw_set_colour(c_black);
//draw_set_alpha(1);

//// Draw rectangle filling the screen.
//draw_rectangle(0, 0, 1920, 1080, 0);

// Set color to opaque white.
draw_set_colour(c_black);
//draw_set_alpha(1);

//// Draw game over banner.
//draw_sprite(spr_game_over_banner, 0, 1920 / 2, 1080 / 2);

// Set font.
draw_set_font(fnt_large);

// Align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw pause text.
draw_sprite_ext(spr_button_grey, 1, 1920/2, 1080/2, 20, 20, 0, c_white, 0.9);
draw_text_transformed(1920 / 2, 1080 / 2, string("PAUSED"), 4, 4, 0);