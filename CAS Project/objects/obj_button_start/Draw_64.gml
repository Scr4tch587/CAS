// Draw self, this is the button sprite.
draw_self();

// Set font.
draw_set_font(fnt_small);

// Center align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set color to opaque black.
draw_set_colour(c_black);
draw_set_alpha(1.0);

// Draw reroll text.
draw_text_transformed(x + 255, y + 70, "PLAY", 4*image_xscale, 4.5*image_yscale, image_angle);

draw_set_colour(c_white);
draw_text_transformed(x + 1375, y - 450, "DEMO", 5, 9, image_angle);