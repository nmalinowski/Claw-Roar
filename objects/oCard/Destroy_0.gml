/// @description Destroy card

// Remove card from player's or foe's hand 
if (cardAlliance = c_alliance.player) {
	// Find card index in the hand
	var index = ds_list_find_index(oPlayer.playerHand, id);
	// Remove card from hand
	ds_list_delete(oPlayer.playerHand, index);
} else {
	// Find card index in the hand
	var index = ds_list_find_index(oFoe.foeHand, id);
	// Remove card from hand
	ds_list_delete(oFoe.foeHand, index);
}