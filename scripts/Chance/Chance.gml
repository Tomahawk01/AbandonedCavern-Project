/// @description Chance(percent)
/// @param percent
function Chance()
{
	// Returns true or false depending on RNG
	// ex: 
	//      Chance(0.7);    -> Returns true 70% of the time
	return argument0 > random(1);
}