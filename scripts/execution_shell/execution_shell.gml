function execution_shell(command, argument_){
	
	/*
		Hi,
		I'm gonna show how to use the commands !
		
		
		Exemple case :
		"help 15"
		*command* contains the command, in our case "help"
		*argument_* contains the argument, in our case "15"
		
		
		To add commands it's a simple switch
		just write :
		
		case( THE_COMMAND ) :
			// Content
			ds_list_add(memory, YOUR_MESSAGE_HERE );
			ds_list_add(memory, "wow, nice exemple" );
			// Special, using the argument
			switch(argument_)
			{
				case ( THE_ARGUMENT ) :
					ds_list_add(memory, "More but specialllll" );
				break;
				// use Default for everything which isn't in the cases  :)
			}
		break;
	*/
	
	
	switch(command)
	{
		case("help"):
			ds_list_add(memory, "HELP PAGE " + argument_);
			ds_list_add(memory, "----------------------------------");
			switch(argument_)
			{
				case("0"):	ds_list_add(memory, "Number 0  B)");		break;
				case("1"):	ds_list_add(memory, "Number 1  UwU");	break;
				case("2"):	ds_list_add(memory, "Number 2  OwO");	break;
				default :
					ds_list_add(memory, "help [page number]  -  help menu (0 to 2 pages)");
					ds_list_add(memory, "try it !");
				break;
			}
			ds_list_add(memory, "----------------------------------");
		break;
		
		case("whoami"):
			ds_list_add(memory, "_.~\"~._.~\"~._.~\"~._.~\"~._");
			ds_list_add(memory, "someone really nice :)");
			ds_list_add(memory, "_.~\"~._.~\"~._.~\"~._.~\"~._");
		break;
		
		case("cls"):
			ds_list_destroy(memory);
			memory = ds_list_create();
			//ds_list_destroy(memorySpe);
			//memorySpe = ds_list_create();
			ds_list_add(memory, "Memory cleaned !");
		break;
	}
	
	
	/// Make it play a sound if you want !
	// exemple : audio_play_sound(sndExe, 10, false);     // AUDIO NOT PROVIDED
}