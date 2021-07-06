function getInput(str, position){
	var input = keyboard_string;
	// Why keyboard_string ?  You can't press 2 keys at the same exact time with keyboard_lastchar	so keyboard_string is better
	var newPos = string_length(input); // The amount of characters the cursor has to move to the right
	io_clear(); // Clear the keyboard inputs
	if (string_length(str) > 0 && position != string_length(str) && string_length(input) > 0) {
		var result =  string_copy(str, 0, position) + input + string_copy(str, position+newPos+string_length(input)-1, string_length(str));
	}else var result = str + input;
	strPosition += newPos; // Actualize the cursor position
	return result; // Return the line
}