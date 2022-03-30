// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_data_get_key(){
	return room_get_name(room) + object_get_name(object_index) + string(x) + string(y);
}