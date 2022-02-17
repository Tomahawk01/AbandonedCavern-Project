if (!global.pause) exit;

var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 32, x_buffer = 16;														// how far away our elements are from each other (from dividing line)
var start_y = (gheight / 2) - (((ds_height - 1) / 2) * y_buffer);
var start_x = gwidth / 2;

// Draw Pause Menu "Back"
var c = c_black;
draw_rectangle_color(0, 0, gwidth, gheight, c, c, c, c, false);

// Draw Elements on Left Side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var left_text_x = start_x - x_buffer;
var left_text_y;
var x_offset;

var yy = 0;
repeat (ds_height)
{
	left_text_y = start_y + (yy * y_buffer);
	c = c_white;
	x_offset = 0;
	
	if (yy == menu_option[page])
	{
		c = c_orange;
		x_offset = -(x_buffer / 2);
	}
	
	draw_text_color(left_text_x + x_offset, left_text_y, ds_grid[# 0, yy], c, c, c, c, 1);
	yy++;
}

// Draw Dividing line
draw_line(start_x, start_y - y_buffer, start_x, left_text_y + y_buffer);

// Draw Elements on Right Side
draw_set_halign(fa_left);

var right_text_x = start_x + x_buffer;
var right_text_y;

yy = 0;
repeat (ds_height)
{
	right_text_y = start_y + (yy * y_buffer);
	switch(ds_grid[# 1, yy])
	{
		case menu_element_type.shift:
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var left_shift = "<< ";
			var right_shift = " >>";
			c = c_white;
			
			if (current_val == 0) left_shift = "";
			if (current_val == array_length_1d(ds_grid[# 4, yy]) - 1) right_shift = "";
			
			if (inputting && yy == menu_option[page])
			{
				c = c_yellow;
			}
			draw_text_color(right_text_x, right_text_y, left_shift + current_array[current_val] + right_shift, c, c, c, c, 1);
			
		break;
		
		case menu_element_type.slider:
			var len = 64;
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
			c = c_white;
			draw_line_width(right_text_x, right_text_y, right_text_x + len, right_text_y, 2);
			
			if (inputting && yy == menu_option[page])
			{
				c = c_yellow;
			}
			draw_circle_color(right_text_x + (circle_pos * len), right_text_y, 4, c, c, false);
			draw_text_color(right_text_x + (len * 1.2), right_text_y, string(floor(circle_pos * 100)) + "%", c, c, c, c, 1);
		break;
		
		case menu_element_type.toggle:
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			c = c_white;
			
			if (inputting && yy == menu_option[page])
			{
				c = c_yellow;
			}
			
			if (current_val == 0)
			{
				c1 = c;
				c2 = c_dkgray;
			}
			else
			{
				c1 = c_dkgray;
				c2 = c;
			}
			
			draw_text_color(right_text_x, right_text_y, "On", c1, c1, c1, c1, 1);
			draw_text_color(right_text_x + 32, right_text_y, "Off", c2, c2, c2, c2, 1);
		break;
		
		case menu_element_type.input:
			var current_val = ds_grid[# 3, yy];
			var str_val;
			
			switch (current_val)
			{
				case vk_up:			str_val = "Up key"; break;
				case vk_down:		str_val = "Down key"; break;
				case vk_left:		str_val = "Left key"; break;
				case vk_right:		str_val = "Right key"; break;
				default:			str_val = chr(current_val); break;
			}
			
			c = c_white;
			if (inputting && yy == menu_option[page])
			{
				c = c_yellow;
			}
			draw_text_color(right_text_x, right_text_y, str_val, c, c, c, c, 1);
		break;
	}
	yy++;
}

draw_set_valign(fa_top);
