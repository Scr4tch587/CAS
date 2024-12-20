// If the pause screen is open...
if (instance_exists(obj_pause_screen))
{
	// Exit event.
	exit;
}

// If the game over screen is open...
if (instance_exists(obj_game_over))
{
	// Exit event.
	exit;
}

// If the end screen is open...
if (instance_exists(obj_template_complete))
{
	// Exit event.
	exit;
}

// If the upgrade screen is open...
if (instance_exists(obj_upgrade_screen))
{
	// Exit event.
	exit;
}

// If the button is active.
if (instance_exists(obj_pause_button))
{
	// If the pause button is clicked.
	if (obj_pause_button.is_clicked)
	{
		// Exit event.
		exit;
	}
}

draw_sprite_ext(spr_info, 0, 1290, 25, 0.8, 0.8, 0, c_white, 1);

// Draw the back of the health bar.
draw_sprite_ext(spr_healthbar, 0, 30, 25, 0.8, 0.8, 0, c_white, 1);

// Get how much the health bar should be filled.
var _fill = (hitpoints / hitpoints_max)

// Draw the health bar filling.
draw_sprite_ext(spr_healthbar_fill_red, 0, 147, 65, (15.4) * _fill, 1.7, 0, c_white, 1);

// Get how much the bar should be filled.
_fill = min(global.mana / global.mana_max, 1);

// Draw the experince bar filling.
draw_sprite_ext(spr_healthbar_fill, 0, 147, 129, (15.4) * _fill, 1.7, 0, c_white, 1);


// Set the font.
draw_set_font(fnt_small);
draw_set_colour(c_black);

// Center the text vertically and horizontally.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


// Draw our current level.
draw_text(1415, 235, string(global.protons));
draw_text(1550, 235, string(global.neutrons));
draw_text(1685, 235, string(global.electrons));
draw_text(1820, 235, string(global.coins));

draw_set_font(fnt_large);
draw_text(1595, 100, "Wave " + string(global.level));

draw_set_font(fnt_small);
draw_text(1595, 150, string(global.xp_goal - global.xp) + " ENEMIES LEFT");

draw_set_font(fnt_medium);
draw_set_color(c_white)

// Draw the shooting weapon icon, using the "unlocked"
// property of the shooting weapon.
draw_sprite(spr_item_slot, !global.shooting[? "unlocked"], 50, 560);
draw_sprite_ext(spr_shooting_icon, !global.shooting[? "unlocked"], 80, 579, 0.335, 0.335, 0, c_white, 1);

// Draw the trail weapon icon, using the "unlocked"
// property of the trail weapon.
draw_sprite(spr_item_slot, !global.trail[? "unlocked"], 50, 720);
draw_sprite_ext(spr_trail_icon, !global.trail[? "unlocked"], 124, 785, 0.350, 0.350, 0, c_white, 1);

// Draw the swipe weapon icon, using the "unlocked"
// property of the swipe weapon.
draw_sprite(spr_item_slot, !global.chunk[? "unlocked"], 50, 880);
draw_sprite_ext(spr_chunk_icon, !global.chunk[? "unlocked"], 124, 950, 0.380, 0.380, 0, c_white, 1);

draw_set_halign(fa_left);
draw_text(170, 575, global.acid);
draw_text(170, 735, global.gas);
draw_text(170, 895, global.chunks);

// If the left mouse button is NOT pressed...
if (!mouse_check_button(mb_left))
{
	// Exit event.
	exit;
}
