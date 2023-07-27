// update - called every game tick

// stops the stage music from playing
suppress_stage_music(0, 1);

if (state == "taunt"){
	if (state_timer == 5){
		// stops sounds
		if is_string(last_sound)
		{
			sound_stop(asset_get(last_sound));
			sound_stop(sound_get(last_sound));
		}else if is_number(last_sound)
		{
			sound_stop(last_sound);
		}
		current_sound_text = "..."
		with (oPlayer)
		{
			current_jukebox_text = other.current_sound_text 
		}
	}
	if (state_timer == 60){
		var _index = 0;
		current_sound = sounds[random_func(_index, array_length(sounds), true)];
		// check to make sure its not the same sounds
		while (current_sound == last_sound)
		{	
			_index += 1;
			current_sound = sounds[random_func(_index, array_length(sounds), true)];
			if (_index >= 24)
			{
				print_debug("Jukebox buddy error: while loop failed! last sound " + string(last_sound) + "," + "current_sound " + string(current_sound));
				break;
			}
		} 
		
		// plays sound
		if is_string(current_sound) // checks for string
		{
			if sound_get(current_sound) != 737 // checks if the sound is in the sound folder
			{ 
				sound_play(sound_get(current_sound));
			}else if asset_get(current_sound) != -1 // checks if the sound is in the game assets
			{ 
				sound_play(asset_get(current_sound));
			}else
			{
				print_debug("Jukebox buddy error: sound isnt in the sound folder or in the game assets")
			}
		}else if is_number(current_sound)
		{
			sound_play(current_sound);
		}
		last_sound = current_sound;
		other_last_sound = last_sound

		// text
		current_sound_text = string(current_sound)
		current_sound_text = string_replace_all(current_sound_text, "_", " ") 
		current_sound_text = string_replace(current_sound_text, "loop", "")
		current_sound_text = string_replace(current_sound_text, "music", "")
		current_sound_text = string_replace(current_sound_text, "sfx", "")
		if (string_char_at(current_sound_text, string_length(current_sound_text)) == "i")
		{
			current_sound_text = string_delete(current_sound_text, (string_length(current_sound_text) - 2), 3)
		}
		if (string_char_at(current_sound_text, 1) == " ")
		{
			current_sound_text = string_delete(current_sound_text, 1, 1)
		}
		// sets all players current_jukebox values
		with (oPlayer)
		{
			current_jukebox_music = other.last_sound
			current_jukebox_text = other.current_sound_text
		}
	} 
}

last_sound = oPlayer.current_jukebox_music
