if (global.inspector_mode) {
	
	draw_self()
	
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle((x-60),y-60, x+60, y-20, false)

	draw_set_alpha(1)
	draw_set_colour(c_white);

	draw_text(x-50, y-50, "iId: " + string(id))

}
