
// If hitpoints are over zero...
if (hitpoints > 0 and _cooldown >= 60 and global.paused == false)
{
	_cooldown = 0
	// Set the healthbar timer to 60.
	// Causing the healthbar to show for 60 game steps.
	show_healthbar = 60;

	// Reduce hitpoints by the damage caused by the shooting weapon.
	hitpoints -= global.shooting[? "damage"];

	// Create text popup to indicate damage.
	var _text = instance_create_layer(x + 0, y + 0, "UpgradeScreen", obj_text_popup);

	// Set text to damage amount.
	_text.text = -global.shooting[? "damage"];

	// Set our sprite to the hit sprite.
	sprite_index = hit_sprite;
	image_index = 0;

	// If our hitpoints has reached zero...
	if (hitpoints <= 0)
	{
		// Destroy this instance.
		instance_destroy();
	}
}