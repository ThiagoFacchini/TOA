/// @description Draw the Debug Window

if (isVisible) {
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle(0,0, 300, 768, false)

	draw_set_alpha(1)
	draw_set_colour(c_white);

	var dateTime = scr_sys_ct_tm_get_DateTime()

	dateArr[0]	= dateTime[2]
	dateArr[1]	= dateTime[3]
	dateArr[2]	= dateTime[4]

	draw_text(10, 10, "Date:")
	draw_text(20, 30, scr_sys_dt_date_format2(dateArr) )

	timeArr[0] = dateTime[0]
	timeArr[1] = dateTime[1]

	draw_text(10, 60, "Time:")
	draw_text(20, 80, scr_sys_dt_time_format2(timeArr) )

	draw_text(10, 110, "Season:")
	draw_text(20, 130, scr_sys_intl_get_Translation(global.intl_date_seasons_section, dateTime[5]) )

	draw_text(10, 160, "Language:")
	draw_text(20, 180, string(scr_sys_intl_get_Language()) )

	draw_text(10, 210, "Light Intensity:")
	draw_text(20, 230, string(global.light_intensity))
}
