/// @desc

collected = false;

key = save_data_get_key();
_save_data = ds_map_find_value(game_controller.save_data, key);

if (!is_undefined(_save_data) && _save_data == true)
{
	collected = true;
}
else
{
	collected = false;
}
