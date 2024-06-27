if(_menu==1){
	draw_set_color(c_white);
	draw_set_font(font_determination_mono);
	draw_text_transformed(280,110,_naming_name,2,2,0);
}

if(_menu==2||_menu==3){
	draw_set_color(c_white);
	draw_set_font(font_determination_mono);
	draw_text_transformed(_confirm_name_x+_confirm_name_offset_x,_confirm_name_y+_confirm_name_offset_y,_naming_name,_confirm_name_scale,_confirm_name_scale,_confirm_name_angle);
}