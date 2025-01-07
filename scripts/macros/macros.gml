/// Game Macros
function macros() {

#region Card Rarity
	enum c_rarity {
		bronze,
		silver,
		gold,
		rainbow
	}
#endregion


#region Card Alliance
	enum c_alliance {
		player,
		foe
	}
#endregion


#region Card Level Clamp
#macro CARD_MIN_LEVEL 1
#macro CARD_MAX_LEVEL 5
#endregion


#region Player Deck
#macro PLAYER_DECK_X 574
#macro PLAYER_DECK_Y 257
#endregion


#region Player Hand
#macro PLAYER_HAND_X   288
#macro PLAYER_HAND_Y   258
#macro PLAYER_MAX_CARD 5
#macro CARD_SPACING    50
#endregion


#region Alarms
#macro DRAW 0
#endregion


#region Card Animation
#macro CARD_DRAW_SPEED game_get_speed(gamespeed_fps) / 2
#macro CARD_ZOOM_SPEED 0.2
#endregion


#region Battle Position
#macro PLAYER_BATTLE_X 158
#macro PLAYER_BATTLE_Y 162
#macro FOE_BATTLE_X    478
#macro FOE_BATTLE_Y    162
#endregion



}
