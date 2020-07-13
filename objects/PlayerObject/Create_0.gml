//Indicates if the cooldown is finished
ready = true;

//These are used to represent the cooldown the player must wait before teleporting again
maxTPCooldown = 20;
tpCooldown = 0;

teleportRange = 1000;

livesLeft = 3;

//records the previous location so the player does not die instantly when they hit lava
prevX = x;
prevY = y;

//The first teleport is recorded so that the target appears at the proper time
firstTeleport = false;

//These coordinates are used by the target
attemptedX = x;
attemptedY = y;

//Tells whether the end of level audio cue has been played yet
played = false;

//Tells if the alarm has gone off
levelEndAlarm = 90;

window_mouse_set(window_get_width()/2, window_get_height()/2);