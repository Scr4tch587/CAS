// Create variables for the mouse anchor position.
global.mouse_anchor_x = 0;
global.mouse_anchor_y = 0;

// Declare player movement script.
function player_movement() 
{
	keypressed = false;
	// Set speed to 0.
	// We increase it again below.
	speed = 0;
		
	// If the W key is down...
	if (keyboard_check(ord("W")))
	{
		// Add -10 to vertical speed.
		vspeed += -7.5;
		keypressed = true;
	}
	
	// If the S key is down...
	if (keyboard_check(ord("S")))
	{
		// Add 10 to vertical speed.
		vspeed += 7.5;
		keypressed = true;
	}
	
	// If the A key is down...
	if (keyboard_check(ord("A")))
	{
		// Add -10 to horizontal speed.
		hspeed += -7.5;
		keypressed = true;
	}
	
	// If the D key is down...
	if (keyboard_check(ord("D")))
	{
		// Add 10 to horizontal speed.
		hspeed += 7.5;
		keypressed = true;
	}

	// Set the direction from the direction
	// from 0, 0 to hspeed, vspeed.
	direction = point_direction(x, y, x + hspeed, y + vspeed);
	
	if (keypressed)
	{
		global.herolastmoved = direction;
	}


	// Set speed to a fixed value in the current direction.
	// This essentially normalizes the curent hspeed and vspeed values.
	speed = min(speed, 7.5);

	// If hspeed does not equal 0...
	if (hspeed != 0)
	{
		// Flip sprite horizontally based on hspeed.
		image_xscale = -1;
		image_yscale = 1;
	}
	if (hspeed < 0) {
		image_xscale = 1;
	}

	// If sprite is not the hit sprite,
	// meaning the hero isn't currently being hit...
	if (sprite_index != spr_hero_hit)
	{
		// If speed is over 0...
		if (speed > 0)
		{
			// Set sprite to the running sprite.
			sprite_index = spr_hero_run;
			
			image_index += 0;
		}
	
		// Else speed is 0...
		else
		{
			// Set sprite to the idle sprite.
			sprite_index = spr_hero_idle;
			image_index += 0;
		}
	}
		
	//Here is the code for stopping collisions with obj_environment for objects underl environment folder
	// Check for a vertical collision
	if place_meeting(x, y + vspeed, obj_environment) {
	    // If collision is detected, stop vertical movement
	    vspeed = 0;
	} 
	
	// Check for a horizontal collision
	if place_meeting(x + hspeed, y, obj_environment) {
	    // If collision is detected, stop horizontal movement
	    hspeed = 0;
	}
}