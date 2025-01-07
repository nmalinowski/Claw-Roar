///getCardRarity(rarity_string);
function getCardRarity(argument0) {

	//@descritpion Returns the rarity real value from a given string

	var rarityString = argument0;

	switch (rarityString) {
	
		case "bronze":	return c_rarity.bronze;
											 
		case "silver":	return c_rarity.silver;
											 
		case "gold":	return c_rarity.gold;
	
		case "rainbow": return c_rarity.rainbow;
	
		default:        show_debug_message("Invalid Card Rarity Type!");
	
	}


}
