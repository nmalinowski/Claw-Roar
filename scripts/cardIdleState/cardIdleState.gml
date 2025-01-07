///cardIdleState();
function cardIdleState() {

	// =================================== CARD IDLE STATE =================================

	if (cardAlliance == c_alliance.player) {
	
		// Update card position
		updateCardPosition();

		// Mouse is over the card
		var mouseHover = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom);

		// If mouse is over the card and no other card is hovered
		if (mouseHover && !oPlayer.isCardHovered) {
		
			// The player has now a card being hovered
			oPlayer.isCardHovered = true;
		
			// Change the card's depth in order to make it appear above all the other cards
			depth = -100;
		
			// Set card's scaling
			image_xscale = 1;
			image_yscale = 1;
		
			// Select the card if the left mouse button is clicked
			if (mouse_check_button_pressed(mb_left) && oBattleManager.battleState == b_state.player_select) {
			
				// Freeze all the cards in the hand to avoid multiple selection
				for (var i = 0; i < ds_list_size(oPlayer.playerHand); i++) {
					oPlayer.playerHand[| i].cardState = cardWaitState;
				}
				// Player has one card selected
				oPlayer.isCardSelected = true;
			
				// Keep track of the selected (played) card by storing its ID
				oPlayer.playedCard = id;

				// Change state - go to battle
				cardState = cardToBattleState;

			}
		} else {
		// Mouse is not over the card
			// Player has not cards being hovered
			oPlayer.isCardHovered = false;
			// Reset the depth
			depth = 0;
			// Reset the card's scaling
			image_xscale = 0.5;
			image_yscale = 0.5;
		}
	} 


}
