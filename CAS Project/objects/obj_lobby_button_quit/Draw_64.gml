// Set frame.
image_index = 1;

// Draw self, this is the button sprite.
draw_self();

// Draw the exit icon.
draw_set_font(fnt_medium);

// Center align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set color to opaque white.
draw_set_colour(c_white);
draw_set_alpha(1.0);

// Draw start text.
draw_text_transformed(x, y + 15, "QUIT", image_xscale, image_yscale, image_angle);