if (curZoomLevel <= maxZoomLevel && !GameLogic.stopGame){
	//Zooms the camera out
	cameraWidth += cameraZoomSpeed * 16;
	cameraHeight += cameraZoomSpeed * 9;
	curZoomLevel += 1;
}