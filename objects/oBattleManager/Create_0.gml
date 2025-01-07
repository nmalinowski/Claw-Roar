/// @description Init Battle Manager

enum b_state {
	player_draw,         // Player draws
	foe_draw,            // Foe draws
	player_select,       // Player selects card
	foe_select,          // Foe selects card
	player_damage,       // Apply player's damage
	foe_damage,          // Apply foe's damage
	player_defeated,     // Is player defeated?
	foe_defeated         // Is foe defeated?
}

battleState = b_state.player_draw;
