/// @desc

is_being_dragged = false;

global.music_gain = amount_current;
audio_master_gain(amount_current);

ini_open("Save.sav");
	Save_Game();
ini_close();


