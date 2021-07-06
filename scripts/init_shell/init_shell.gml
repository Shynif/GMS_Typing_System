function init_shell(){
	
	/// keyboard and string var'
	str = ""; // The current typed text
	strPosition = 0; // Cursor position in the line 0 is the farthest on the right
	
	memory = ds_list_create(); // Store ALL the previous lines, entered + text (like Help content for exemple)     Used for Draw
	
	memoryPosSpe = 0; // Used when browsing through previous ENTERED lines
	memorySpe = ds_list_create(); // Store ONLY the ENTERED lines.
	
	io_clear(); // Clear the keyboard inputs
	
	t = 0; // Time for the nice cursor animation :)
	
}