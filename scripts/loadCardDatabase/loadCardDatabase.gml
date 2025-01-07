/// loadCardDatabase();
function loadCardDatabase() {

	// Open the Json file
	var JsonFile = file_text_open_read("cardsDatabase.txt");

	// File not found
	if (JsonFile == -1) {
		show_message("Unable to open the file. File does not exists!");
		exit;
	}


	var data = "";

	// Read through the Json file and save the text in the Data variable
	while (!file_text_eof(JsonFile)) {
	    data += file_text_read_string(JsonFile);
	    file_text_readln(JsonFile);
	}

	// Close the Json file
	file_text_close(JsonFile);

	// Store the data in a global map
	global.cardData = json_decode(data);



}
