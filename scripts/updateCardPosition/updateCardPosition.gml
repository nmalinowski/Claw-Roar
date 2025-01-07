///updateCardPosition();
function updateCardPosition() {

	// @description - RETURNS TRUE IF THE CARD REACHES THE TARGET POSITION

	// Check card hand x position 
	for (var i = 0; i < ds_list_size(oPlayer.playerHand); i++) {
		if (oPlayer.playerHand[| i] == id) {
			switch (i) {
				case 0: cardHandPosX = PLAYER_HAND_X - (CARD_SPACING * 2); break;
				case 1: cardHandPosX = PLAYER_HAND_X - CARD_SPACING;       break;
				case 2: cardHandPosX = PLAYER_HAND_X;                      break;
				case 3: cardHandPosX = PLAYER_HAND_X + CARD_SPACING;       break;
				case 4: cardHandPosX = PLAYER_HAND_X + (CARD_SPACING * 2); break;
				
			}
		}
	}

	// Move card
	if (point_distance(x, y, cardHandPosX, PLAYER_HAND_Y) < 1) {
		x = cardHandPosX;
		y = PLAYER_HAND_Y
		// Move finished
		return true;
	} else {
		x = lerp(x, cardHandPosX, cardMoveSpeed);
		y = lerp(y, PLAYER_HAND_Y, cardMoveSpeed);

	}


}
