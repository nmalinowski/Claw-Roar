/// @description Clean Data Structures to prevent Memory Leaks

if (ds_exists(playerHand, ds_type_list))  ds_list_destroy(playerHand);
if (ds_exists(playerDeck, ds_type_stack)) ds_stack_destroy(playerDeck);