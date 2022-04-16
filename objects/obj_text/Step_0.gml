/// @desc Progress text

letters += spd;
text_current = string_copy(text, 1, floor(letters));

if (h == 0)
{
	h = string_height(text);
}
w = string_width(text_current);

// Destroy when done
if (letters >= length) && (keyboard_check_pressed(vk_anykey) && !keyboard_check(ord("E")))
{
	instance_destroy();
}
