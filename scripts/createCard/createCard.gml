/// loadCardDatabase(x, y, id, level, alliance);
function createCard(argument0, argument1, argument2, argument3, argument4) {

	///@param x
	///@param y
	///@param ID
	///@param level
	///@param alliance

	var xPos        = argument0;
	var yPos        = argument1;
	var ID			= argument2;
	var level		= argument3;
	var alliance	= argument4;

	// If the ID argument is not a string, cast the current datatype to string
	if (!is_string(ID)) ID = string(ID);

	// Load card ID map
	var cardData = global.cardData[? ID];


	// Create new card
	var newCard = instance_create_layer(xPos, yPos, "Instances", oCard);

	// If foe's card, make it not visible
	if (alliance == c_alliance.foe) {
		newCard.visible = false;
	}

	// Set new card's data
	newCard.cardID          = ID;
	newCard.cardName		= cardData[? "name"];
	newCard.cardRarity		= getCardRarity(cardData[? "rarity"]);
	newCard.cardAlliance	= alliance;
	newCard.cardLevel       = level;

	// Invalid card level
	if (level < CARD_MIN_LEVEL || level > CARD_MAX_LEVEL) {
		show_debug_message("Invalid Card Level! - Range Must Be [1 - 5]");
		exit;
	}

	// Set card attack and defense
	var atkList				= cardData[? "atk"];
	newCard.cardAttack		= atkList[| level - 1];

	var defList				= cardData[? "def"];
	newCard.cardDefense     = defList[| level - 1];


	// Retun new card ID
	return newCard;


}
