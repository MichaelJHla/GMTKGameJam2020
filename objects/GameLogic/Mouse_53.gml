a = random(1) * 2 * pi;
r = 96 * sqrt(random(1));
	
PlayerObject.x = mouse_x + (r * cos(a));
PlayerObject.y = mouse_y + (r * sin(a));