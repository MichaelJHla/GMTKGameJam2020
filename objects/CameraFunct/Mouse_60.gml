if (curZoomLevel >= maxZoomLevel*-1 && !GameLogic.stopGame){
	//Zooms the camera in
	cameraWidth -= cameraZoomSpeed * 16;
	cameraHeight -= cameraZoomSpeed * 9;
	curZoomLevel -= 1;
}
