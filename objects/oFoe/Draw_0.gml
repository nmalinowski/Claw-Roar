/// @description Insert description here
// You can write your code in this editor

// Draw Deck
if (ds_stack_size(foeDeck) > 0) {
	draw_sprite_ext(sBackCard, 0, PLAYER_DECK_X, PLAYER_DECK_Y, 0.5, 0.5, 0, c_white, 1);
}

// Draw HUD
draw_sprite(sFoeHUD, 0, room_width, 0);

// Draw Healthbar
if (drawHealth != foeHealth) {
	drawHealth = lerp(drawHealth, foeHealth, 0.2);
}
var xPos = room_width - 160;
var yPos = 5;
var xScale = (foeHealth / foeMaxHealth);
var blend = make_colour_rgb(255, xScale * 255, xScale * 255);
draw_sprite_ext(sHealthbar, 0, xPos, yPos, xScale, 1, 0, blend, 1);
drawTextCentered(room_width - 180 + 1, 15 + 1, string(foeHealth), c_black, 1, fntDefault);
drawTextCentered(room_width - 180, 15, string(foeHealth), c_white, 1, fntDefault);


// Draw Deck Size
var deckSize = ds_stack_size(foeDeck);
drawTextCentered(room_width - 232 + 1, 15 + 1, string(deckSize), c_black, 1, fntDefault);
drawTextCentered(room_width - 232, 15, string(deckSize), c_white, 1, fntDefault);