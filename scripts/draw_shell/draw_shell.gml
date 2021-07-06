function draw_shell(){
	
	/// Variables
	var hearder = game_project_name + " > ";
	var x_ = 10//+camera_get_view_x(view_camera);
	var y_ = room_height-80//+camera_get_view_y(view_camera);
	var transparency = 0.7; // 0 to 1
	var jump = 40; // Space between lines
	
	//draw_set_font(); // Use and set all you need for fonts here
	draw_set_halign(fa_left); // Align the text on the left horizontaly
	var scale = 2; // Scale the text up :)
	
	
	/// Current line
	var col = draw_get_color(); // Keep the color you are using right now :)
	draw_set_color(c_white); // Customize the color here !
	// Note : it uses draw_text_transformed so it's easier to see but you can change it to draw_text no problem
	if (sin(t/10) > 0.5) { // Animation made using sin, you can remove it if you want
		draw_text_transformed(x_, y_, hearder + string_copy(str, 0, strPosition)+ "_" + string_copy(str, strPosition+1, string_length(str)), scale, scale, 0);
	}else {
		draw_text_transformed(x_, y_, hearder + string_copy(str, 0, strPosition)+ " " + string_copy(str, strPosition+1, string_length(str)), scale, scale, 0);
	}
	draw_set_color(col);
	
	
	/// Previous lines in memory
	var alp = draw_get_alpha(); // In case a special alpha was used in the game
	draw_set_alpha(transparency); // little transparency effect :)
	for(var i=0; i!=ds_list_size(memory); i++) {
		// Note : it uses draw_text_transformed so it's easier to see but you can change it to draw_text no problem
		draw_text_transformed(x_, y_-jump-(i*jump), ds_list_find_value(memory, ds_list_size(memory)-i-1), scale, scale, 0);
	}
	draw_set_alpha(alp);
	
	
}