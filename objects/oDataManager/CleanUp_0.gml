/// @description Clean Data Structures to prevent Memory Leaks

if (ds_exists(global.cardData, ds_type_map)) ds_map_destroy(global.cardData);