/// @description Battle Manager Logic

switch (battleState) {
	
	#region PLAYER DRAW
	case b_state.player_draw:
		
		// Move the cards to the hand
		with (oCard) {
			cardState = cardToHandState;
		}
		
		// Draw Card
		var handSize = ds_list_size(oPlayer.playerHand);
		
		// Hand is full or No more cards on the deck -> Change battle state
		if (handSize >= PLAYER_MAX_CARD || ds_stack_size(oPlayer.playerDeck) == 0) {
			battleState = b_state.foe_draw;
			
		} else {
			// Hand is not full and there are cards on the deck -> Draw cards
			if (oPlayer.alarm[DRAW] == -1) oPlayer.alarm[DRAW] = CARD_DRAW_SPEED;
		}
	
	break;
	#endregion
	
	#region FOE DRAWS
	case b_state.foe_draw:
		
		// Draw Card
		handSize = ds_list_size(oFoe.foeHand);
		
		// Hand is full or No more cards on the deck -> Change battle state
		if (handSize >= PLAYER_MAX_CARD || ds_stack_size(oFoe.foeDeck) == 0) {
			battleState = b_state.player_select;
		} else {
			// Hand is not full and there are cards on the deck -> Draw cards
			if (oFoe.alarm[DRAW] == -1) oFoe.alarm[DRAW] = CARD_DRAW_SPEED / 10;
		}
	
	break;
	#endregion
	
	#region PLAYER SELECTION
	case b_state.player_select:
		// Card has been selected and has finished its animation -> Change state
		if (oPlayer.isCardSelected && oPlayer.playedCard.endAnimation) battleState = b_state.foe_select;
	
	break;
	#endregion
	
	#region FOE SELECTION

	case b_state.foe_select:
	
		// Get the size of the hand
		handSize       = ds_list_size(oFoe.foeHand);
		// Create max attack variable - Foe's be looking for the card with the greatest attack
		var maxAttack      = 1;
		// The index (relative to the hand) of the strongeset card
		var maxAttackIndex = 0;
		
		// Loop though the hand and find the card with the highest attack
		for (var i = 0; i < handSize; i++) {
			// Check card
			var card = oFoe.foeHand[| i];
			// Compare attack - card has higher attack value
			if (card.cardAttack > maxAttack) {
				// Set new max attack
				maxAttack = card.cardAttack;
				// Store the index (hand index) of the card
				maxAttackIndex = i;
			}
		}
		
		// Move the card to the battle location
		oFoe.foeHand[| maxAttackIndex].cardState = cardToBattleState;
		// Make the selected card visible
		oFoe.foeHand[| maxAttackIndex].visible = true;
		// Change the card's depth in order to make it appear above all the other cards
		oFoe.foeHand[| maxAttackIndex].depth = -100;
		// Store the foe's played card
		oFoe.playedCard = oFoe.foeHand[| maxAttackIndex];
		
		// Card has been selected and has finished its animation -> Change state
		if (oFoe.playedCard.endAnimation) {
			oPlayer.playedCard.cardState = cardAttackState;
			battleState = b_state.player_damage;
		}
	
	break;
	#endregion
	
	#region PLAYER APPLY DAMAGE
	case b_state.player_damage:
	
		// Player's card has attacked and finished its animation -> Change Battle State
		if (oPlayer.playedCard.endAnimation) {
			// Now, the foe's card attacks
			oFoe.playedCard.cardState = cardAttackState;
			battleState = b_state.foe_damage;
		}
	
	break;
	#endregion
	
	#region FOE APPLY DAMAGE
	case b_state.foe_damage:
		
		// Foe's card has attacked and finished its animation -> Change Battle State
		if (oFoe.playedCard.endAnimation) {
			battleState = b_state.player_defeated;
		}
	
	break;
	#endregion
	
	#region IS PLAYER DEFEATED?
	case b_state.player_defeated:
	
		// Destroy the played cards
		with (oPlayer.playedCard) instance_destroy();
		with (oFoe.playedCard)    instance_destroy();
		
		// Check Player's health
		if (oPlayer.playerHealth <= 0) {
				// Player's dead
				show_message("Foe wins!");
				// Reset the battle - OR MAKE ANYTHING YOU WANT
				room_goto(rmBattle);
		} else {
			// Player's still alive -> Change battle state
			battleState = b_state.foe_defeated;
		}
	
	break;
	#endregion
	
	#region IS FOE DEFEATED?
	case b_state.foe_defeated:
	
		// Check foe's health
		if (oFoe.foeHealth <= 0) {
			// Foe's dead
			show_message("Player wins!");
			// Reset the battle - OR MAKE ANYTHING YOU WANT
			room_goto(rmBattle);
		} else {
			// Foe's still alive -> Reset variables and change turn
			oPlayer.isCardSelected = false;
			battleState = b_state.player_draw;
		}
	
	break;
	#endregion
	

}