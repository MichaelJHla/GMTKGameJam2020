draw_set_font(GUISmallestFont);
draw_set_color(c_white);
draw_set_halign(fa_left);
if (!GameLogic.stopGame){
	if (global.curLevel == 1){	
		draw_text(20, 20, "Your teleporter is broken so you only have know a general range you will be teleporting within.\nCLick left mouse button and try to reach the end of the level.");
	} else if (global.curLevel == 2){
		draw_text(20, 20, "You should try and give your marine the best odds of surviving a teleport by finding the best place for the circle.");
	} else if (global.curLevel == 3){
		draw_text(20, 20, "Some paths are better than others.");
	} else if (global.curLevel == 4){
		draw_text(20, 20, "There are various upgrades that you can find.\nThis one increases the radius of your range.");
	} else if (global.curLevel == 5){
		draw_text(20, 20, "This is the final level. More levels to be added!");
	}
}
