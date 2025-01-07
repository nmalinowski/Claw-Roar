///cardReturnState();
function cardReturnState() {

	// =================================== CARD RETURN STATE =================================


	// Player
	if (cardAlliance == c_alliance.player) {
	
	
		// Card reached the target position
		if (point_distance(x, y, PLAYER_BATTLE_X, PLAYER_BATTLE_Y) < 1) {
			x = PLAYER_BATTLE_X;
			y = PLAYER_BATTLE_Y;
			// Card's animation finished
			endAnimation = true;
		} else {
			// Card's animation finished
			endAnimation = false;
		
			x = lerp(x, PLAYER_BATTLE_X, cardMoveSpeed);
			y = lerp(y, PLAYER_BATTLE_Y, cardMoveSpeed);
		}
	
	// Foe
	} else {

	
		// Card reached the target position
		if (point_distance(x, y, FOE_BATTLE_X, FOE_BATTLE_Y) < 1) {
		
			x = FOE_BATTLE_X;
			y = FOE_BATTLE_Y;
			// Card's animation finished
			endAnimation = true;
		} else {
			// Card's animation finished
			endAnimation = false;
		
			x = lerp(x, FOE_BATTLE_X, cardMoveSpeed);
			y = lerp(y, FOE_BATTLE_Y, cardMoveSpeed);
		}
	
	}


}
