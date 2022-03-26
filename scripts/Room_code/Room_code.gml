// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Room_code(){
	Fade_In();
	
	if (!instance_exists(obj_player))
	{
		instance_create_layer(global.target_x, global.target_y, "Player", obj_player);
	}
	
	window_set_cursor(cr_none);
}