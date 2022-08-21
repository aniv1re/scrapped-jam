global.isDebug = true;

// Flip coords

global.playerPosX = objCharacter_Base.x + 4;
if (global.flipCharacter != 0) {
	global.playerPosX = objCharacter_Base.x - 4;
} 
global.playerPosY = objCharacter_Base.y;