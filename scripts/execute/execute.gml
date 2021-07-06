function execute(str){
	
	// Get the command out of the line
	var command = "";
	var posEndCommand = string_length(str);
	for(var i=0; i<string_length(str); i++) {
		if (string_char_at(str, i) == " " && command != "YES") {
			posEndCommand = i-1;
			command= "YES";
		}
	}
	var commandStr = string_copy(str, 0, posEndCommand);
	if (posEndCommand != string_length(str)) var argumentStr = string_copy(str, posEndCommand+2, string_length(str)-2) else var argumentStr = "";
	
	
	execution_shell(commandStr, argumentStr);
	
}