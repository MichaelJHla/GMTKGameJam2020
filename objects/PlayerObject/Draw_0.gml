draw_self();

//This will draw a circle around the player that shows the range that the player can teleport within
draw_set_alpha(1);
draw_set_color(c_white);
draw_circle(x, y, teleportRange, true);