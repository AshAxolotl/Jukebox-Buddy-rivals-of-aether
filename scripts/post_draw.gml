if variable_instance_exists(oPlayer, "current_jukebox_text")
{
	draw_set_font(asset_get("fName"))
	var _x = get_instance_x(self)  - (string_width(oPlayer.current_jukebox_text) / 2) + 8
	var _y = get_instance_y(self) - offset_y - 4
	var _x = round(_x)
	var _y = round(_y)
	draw_debug_text(_x, _y, oPlayer.current_jukebox_text)
}