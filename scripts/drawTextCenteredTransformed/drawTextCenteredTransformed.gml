/// drawTextCenteredTransformed(x, y, string, xscale, yscale, angle, colour, alpha, font);
function drawTextCenteredTransformed(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {

	/// @param x
	/// @param y
	/// @param string
	/// @param x_scale
	/// @param y_scale
	/// @param angle
	/// @param colour
	/// @param alpha
	/// @param font

	draw_set_font(argument8);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(argument7);
	draw_set_colour(argument6);
	draw_text_transformed(argument0, argument1, argument2, argument3, argument4, argument5);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fntDefault);


}
