// Draw self, this is the button sprite.
draw_self();

// Set font.
draw_set_font(fnt_medium);

// Center align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set color to opaque black.
draw_set_colour(c_black);
draw_set_alpha(1.0);

// Draw reroll text.
draw_text_transformed(x + 63, y + 52, "Na", image_xscale, image_yscale, image_angle);