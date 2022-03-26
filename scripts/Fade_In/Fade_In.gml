// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Fade_In(){
	if (!instance_exists(obj_fade))
	{
		instance_create_layer(x, y, "Fade", obj_fade);
	}
}