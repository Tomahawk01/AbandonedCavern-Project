/// @desc Screen_Shake(magnitude, frames)
/// @param {integer} Magnitude
/// @param {integer} Frames (60 = 1 second)

function Screen_Shake(magnitude, frames){
	with (obj_camera)
	{
		if (magnitude > shake_remain)
		{
			shake_magnitude = magnitude;
			shake_remain = magnitude;
			shake_lenght = frames;
		}
	}
}