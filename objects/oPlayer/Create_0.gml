/// @description Init player

randomize(); 

// Player health
playerMaxHealth = 50;
playerHealth    = playerMaxHealth;
drawHealth      = playerMaxHealth;


// Player Deck
playerDeck	   = ds_stack_create();

// Add cards to the deck
addCardsToDeck(playerDeck);

// Shuffle the deck
deckShuffle(playerDeck);

// Player Hand
playerHand     = ds_list_create();


// Is a card hovered?
isCardHovered  = false;

// Is a card selected?
isCardSelected = false;

// Keep track of the played card
playedCard = noone;