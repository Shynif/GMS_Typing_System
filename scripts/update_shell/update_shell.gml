function update_shell(){
	
	t++; // "Cursor" animation
	
	
	#region Execute the text
	if (keyboard_check_pressed(vk_enter)) {
		// Reset variables
		ds_list_add(memory, str);
		//memoryPos = 0;
		ds_list_add(memorySpe, str);
		memoryPosSpe = 0;
	
		// Don't be scared ! Be curious and see what's under the hood !
		execute(str); // Execute the string
	
		// Reset some more variables
		str = "";
		strPosition = 0;
	}
	#endregion
	
	
	/// Backspace
	if (keyboard_check(vk_backspace)) {
		/// Don't be scared ! Be curious and see what's under the hood !
		str = deleteInput(str, strPosition); // Remove the 1 letter on the left
	}
	
	
	/// Moving the cursor
	if (keyboard_check(vk_left) and strPosition > 0) strPosition--; // Move it 1 to the left
	if (keyboard_check(vk_right) and strPosition < string_length(str)) strPosition++; // Move it 1 to the right
	
	
	#region Get older texts from memory
	if (keyboard_check_pressed(vk_up)) {
		memoryPosSpe++;
		str = string(ds_list_find_value(memorySpe, ds_list_size(memorySpe)-memoryPosSpe));
		strPosition = string_length(str);
	}
	if (keyboard_check_pressed(vk_down)) {
		memoryPosSpe--;
		str = string(ds_list_find_value(memorySpe, ds_list_size(memorySpe)-memoryPosSpe));
		strPosition = string_length(str);
	}
	#endregion
	
	
	/// Don't be scared ! Be curious and see what's under the hood !
	str = getInput(str, strPosition); // Add the latest key inputs to str
	// Why is it after ? It's because of io_clear ! it removes Enter and backspace
	
	
}