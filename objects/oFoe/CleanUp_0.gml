/// @description Clean Data Structures to prevent Memory Leaks

if (ds_exists(foeHand, ds_type_list))  ds_list_destroy(foeHand);
if (ds_exists(foeDeck, ds_type_stack)) ds_stack_destroy(foeDeck);