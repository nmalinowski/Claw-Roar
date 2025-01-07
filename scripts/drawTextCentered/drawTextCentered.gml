/// drawTextCentered(x, y, string, colour, alpha, font);
function drawTextCentered(argument0, argument1, argument2, argument3, argument4, argument5) {

	/// @param x
	/// @param y
	/// @param string
	/// @param colour
	/// @param alpha
	/// @param font

	draw_set_font(argument5);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(argument4);
	draw_set_colour(argument3);
	draw_text(argument0, argument1, argument2);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fntDefault);


}
