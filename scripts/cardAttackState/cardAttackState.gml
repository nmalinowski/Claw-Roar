///cardAttackState();
function cardAttackState() {

	// =================================== CARD ATTACK STATE =================================

	// Player
	if (cardAlliance == c_alliance.player) {
	
		// Change the card's depth in order to make it appear above all the other cards
		depth = -100;
	
		// Card reached the target position
		if (point_distance(x, y, FOE_BATTLE_X, FOE_BATTLE_Y) < 1) {
		
			x = FOE_BATTLE_X;
			y = FOE_BATTLE_Y;
		
			// Apply Damage
			var damage = cardAttack - oFoe.playedCard.cardDefense;
			if (damage > 0) {
				oFoe.foeHealth = max(oFoe.foeHealth - damage ,0);
			}
		
			// Set foe's card defense -> [ FOE_DEF - PLAYER_ATK ]
			oFoe.playedCard.cardDefense = max(oFoe.playedCard.cardDefense - cardAttack, 0);
		
			// Apply Screenshake
			applyScreenshake(2, game_get_speed(gamespeed_fps)/4);
		
			// Change State
			cardState = cardReturnState;
		} else {
		
			// Card's still animating
			endAnimation = false;
			x = lerp(x, FOE_BATTLE_X, cardMoveSpeed);
			y = lerp(y, FOE_BATTLE_Y, cardMoveSpeed);
		}
	
	// Foe
	} else {

		// Change the card's depth in order to make it appear above all the other cards
		depth = -100;
	
		// Card reached the target position
		if (point_distance(x, y, PLAYER_BATTLE_X, PLAYER_BATTLE_Y) < 1) {
			x = PLAYER_BATTLE_X;
			y = PLAYER_BATTLE_Y;
		
			// Apply Damage
			var damage = cardAttack - oPlayer.playedCard.cardDefense;
			if (damage > 0) {
				oPlayer.playerHealth = max (oPlayer.playerHealth - damage, 0);
			}
		
			// Set foe's card defense -> [ FOE_DEF - PLAYER_ATK ]
			oPlayer.playedCard.cardDefense = max(oPlayer.playedCard.cardDefense - cardAttack, 0);
		
			// Apply Screenshake
			applyScreenshake(5, game_get_speed(gamespeed_fps)/4);
		
			// Change State
			cardState = cardReturnState;
		} else {
			// Card's still animating
			endAnimation = false;
			// Move the card to the target position
			x = lerp(x, PLAYER_BATTLE_X, cardMoveSpeed);
			y = lerp(y, PLAYER_BATTLE_Y, cardMoveSpeed);
		
		}
	
	}


}
