/// @description Insert description here
// You can write your code in this editor

// Draw Deck
if (ds_stack_size(playerDeck) > 0) {
	draw_sprite_ext(sBackCard, 0, PLAYER_DECK_X, PLAYER_DECK_Y, 0.5, 0.5, 0, c_white, 1);
}


// Draw HUD
draw_sprite(sPlayerHUD, 0, 0, 0);

// Draw Healthbar
if (drawHealth != playerHealth) {
	drawHealth = lerp(drawHealth, playerHealth, 0.2);
}
var xPos = 69;
var yPos = 5;
var xScale = (playerHealth / playerMaxHealth);
var blend = make_colour_rgb(255, xScale * 255, xScale * 255);
draw_sprite_ext(sHealthbar, 0, xPos, yPos, xScale, 1, 0, blend, 1);
drawTextCentered(178 + 1, 15 + 1, string(playerHealth), c_black, 1, fntDefault);
drawTextCentered(178, 15, string(playerHealth), c_white, 1, fntDefault);

// Draw Deck Size
var deckSize = ds_stack_size(playerDeck);
drawTextCentered(234 + 1, 15 + 1, string(deckSize), c_black, 1, fntDefault);
drawTextCentered(234, 15, string(deckSize), c_white, 1, fntDefault);