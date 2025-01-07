/// @description Draw Card


// Animate Card Scaling
xScale = lerp(xScale, image_xscale, CARD_ZOOM_SPEED);
yScale = lerp(yScale, image_yscale, CARD_ZOOM_SPEED);


// Draw Card
draw_sprite_ext(sCard, cardRarity, x, y, xScale, yScale, image_angle, image_blend, 1);

// Draw Card Infos

// NAME
drawTextCenteredTransformed(x - 2 * xScale, y + 53 * yScale, cardName, xScale, yScale, image_angle, c_white, 1, fntDefault);

// LEVEL
drawTextCenteredTransformed(x - 32 * xScale, y - 51 * yScale, string(cardLevel), xScale, yScale, image_angle, c_white, 1, fntDefault);

// ATK
drawTextCenteredTransformed(x - 2 * xScale, y - 51 * yScale, string(cardAttack), xScale, yScale, image_angle, c_white, 1, fntDefault);

// DEF
drawTextCenteredTransformed(x + 29 * xScale, y - 51 * yScale, string(cardDefense), xScale, yScale, image_angle, c_white, 1, fntDefault);

