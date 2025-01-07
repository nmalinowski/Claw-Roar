/// @description Init Card

// Card ID
cardID         = "";

// Card Name
cardName       = "";

// Card Rarity -> [Bronze, Silver, Gold, Rainbow]
cardRarity	   = c_rarity.bronze;

	
// Card Stats
cardLevel      = 1;
cardAttack	   = 0;
cardDefense    = 0;

// Card Alliance -> [Player, Foe]
cardAlliance   = c_alliance.player;


// Card State
cardMoveSpeed  = 0.2;
cardState      = cardToHandState;

// Card Animation
image_xscale   = 0.5;
image_yscale   = 0.5;
xScale		   = image_xscale;
yScale		   = image_yscale;
cardHandPosX   = 0;
endAnimation   = false;
