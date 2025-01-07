///cardToHandState();
function cardToHandState() {

	// =================================== CARD TO HAND STATE =================================

	// Player
	if (cardAlliance = c_alliance.player) {
		// Update card position
		if (updateCardPosition()) {
			// Change card state if it has finished updating its position
			cardState   = cardIdleState;
		}
	
	// Foe	
	} else {
		// Set a random position to the foe's card as it is not visible
		x = room_width;
		y = 0;
		// Change card state
		cardState = cardIdleState;
	}


}
