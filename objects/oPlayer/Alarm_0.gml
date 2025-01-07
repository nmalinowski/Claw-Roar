/// @description Draw Card

// Hand is full, exit 
if (ds_list_size(playerHand) >= PLAYER_MAX_CARD) exit; 

// No more cards on the deck
if (ds_stack_size(playerDeck) <= 0) exit;

// Draw card from deck
var cardID = ds_stack_pop(playerDeck);

// Create new Card and choose a random level
var newCard = createCard(PLAYER_DECK_X, PLAYER_DECK_Y, cardID, choose(1, 2, 3, 4, 5), c_alliance.player);
// Add Card to the hand
ds_list_add(playerHand, newCard);

// Draw Card, again
alarm[DRAW] = CARD_DRAW_SPEED;
