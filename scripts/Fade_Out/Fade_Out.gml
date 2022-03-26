/// @function Fade_Out(target room);
/// @param {index} _target_room
/// @param {integer} _target_x
/// @param {integer} _target_y

function Fade_Out(_targetroom, _target_x, _target_y){
	
	global.target_x = _target_x;
	global.target_y = _target_y;
	
	if (!instance_exists(obj_fade))
	{
		var fade = instance_create_layer(x, y, "Fade", obj_fade);
		with (fade)
		{
			a = 0;
			fadeout = true;
			targetroom = _targetroom;
		}
	}
}