function deleteInput(str, position){
	if (string_length(str) > 0) {
		strPosition--;
		return string_copy(str, 0, position-1) + string_copy(str, position+1, string_length(str));
	}
	else return string(str);
}