//These first two lines are used to calculate a random coordinate within a circle
a = random(1) * 2 * pi;
r = teleportCircleRadius * sqrt(random(1));
	
//Move the player object to the random location
PlayerObject.x = mouse_x + (r * cos(a));
PlayerObject.y = mouse_y + (r * sin(a));