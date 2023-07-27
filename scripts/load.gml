sprite_change_offset("idle", 48, 94);
sprite_change_offset("run", 48, 94);
sprite_change_offset("taunt", 48, 94);
sprite_change_offset("wait", 48, 94);
sprite_change_offset("ledge", 48, 94);
sprite_change_offset("turn", 48, 94);

pet_w = 26;			// Default: 40 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 5000;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

offset_x = 48;
offset_y = 94;

// makes it play on load
state = "taunt";
state_timer = 58;

current_sound = "nothing";
current_sound_text = "nothing";
last_sound = "nothing";
with (oPlayer)
{
	oPlayer.current_jukebox_music = "nothing"
	oPlayer.current_jukebox_text = "nothing"
}
// sounds array (new using strings) // removed music_solo_win_loop_i, music_solo_gameover_loop_i, music_solo_restore_loop_i for being only 20 seconds long
//  removed "music_menu_versus_loop_i", "music_menu_versus2_loop_i", "music_menu_lastround_loop_i", "music_menu_customize_loop_i", "music_menu_decisive_loop_i", for not working??? (idk why they do work in undertaleModTool just not in game?)
sounds = ["sfx_absa_8b", "music_plasma_loop_i", "music_grass_loop_i", "music_steam_loop_i", "music_ring_loop_i", "music_fire_loop_i", "music_air_loop_i", "music_earth_loop_i", "music_water_loop_i", "music_tree_loop_i", "music_smoke_loop_i", "music_holy_loop_i", "music_lightning_loop_i", "music_ice_loop_i", "music_gates_loop_i", "music_gates_b_loop_i", "music_abyss_loop_i",
"music_guest1_loop_i", "music_guest2_loop_i", "music_guest2a_loop_i", "music_cavern_loop_i", "music_cavern_pinch_loop_i", "music_sfront_loop_i", "music_grid_loop_i", "music_tether_loop_i", "music_tutorial_st_loop_i", "music_menu_main_loop_i",  
"music_menu_tether_loop_i", "music_menu_build_loop_i", "music_results_abyss_loop_i", "music_solo_map_loop_i", "music_solo_cutscene1_loop_i", "music_solo_cutscene2_loop_i", "music_solo_cutscene3_loop_i", "music_solo_cutscene4_loop_i", "music_solo_cutscene12_loop_i", "music_solo_cutscene13_loop_i", "music_vs_results_loop_i", 
"music_intro", "rivals_intro_audio", "music_wsfire_loop_i", "music_wswater_loop_i", "music_wsair_loop_i", "music_wsearth_loop_i", "music_creatures_loop_i", "music_dungeons_loop_i"]

//set up sounds array (old using index number)
// sounds = ["sfx_absa_8b"]
// var _song_id = 927;
// repeat ((57 + 6)) // 57 songs from 927 to 1039 skipping all even and 6 songs from 1046 to 1056 skipping all the uneven
// {
	// array_push(sounds, _song_id);
	// _song_id += 2;
	// if (_song_id == 1041) _song_id = 1046;
// }

