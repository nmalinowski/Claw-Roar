/// @description Init player

randomize(); 

// Player health
foeMaxHealth = 50;
foeHealth    = foeMaxHealth;
drawHealth   = foeMaxHealth;


// Player Deck
foeDeck	   = ds_stack_create();

// Add cards to the deck
addCardsToDeck(foeDeck);

// Shuffle the deck
deckShuffle(foeDeck);

// Player Hand
foeHand     = ds_list_create();

// Is a card hovered
isCardHovered  = false;

// Keep track of the played card
playedCard = noone;