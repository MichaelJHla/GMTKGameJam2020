if (stopGame){
	draw_set_color(c_black);
	draw_set_alpha(alpha);
	draw_rectangle(0, 0, CameraFunct.cameraWidth, CameraFunct.cameraHeight, false);
	draw_set_alpha(1);
}