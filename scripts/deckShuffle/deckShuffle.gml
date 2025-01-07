///deckShuffle(deck);
function deckShuffle(argument0) {

	/// @param deck

	var deck = argument0;

	// Create deck list
	var deckList = ds_list_create();

	// Loop through the deck stack and copy all the cards ID to the deck list
	var deckSize = ds_stack_size(deck);
	for (var i = 0; i < deckSize; i++) {
		ds_list_add(deckList, ds_stack_pop(deck));
	}

	// Shuffle the deck List
	ds_list_shuffle(deckList);

	// Copy back all the card IDs into the card stack
	var listSize = ds_list_size(deckList);

	for (var i = 0; i < listSize; i++) {
		ds_stack_push(deck, deckList[| i]);
	}


	// Destroy the temp list
	ds_list_destroy(deckList);



}
