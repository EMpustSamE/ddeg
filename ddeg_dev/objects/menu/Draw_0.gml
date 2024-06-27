if(_menu==0){
	if(_mode==1){
		draw_sprite(spr_bg_area_1,0,0,-120);
	}
	draw_sprite_ext(spr_logo,7,173.5,26,1.5,1.5,0,c_white,1);
	draw_set_font(font_determination_sans);
	draw_set_halign(fa_middle);
	draw_set_color(c_red);
	draw_text_ext_transformed(165,50,"THE ENDLESS GENOCIDE",9,-1,0.5,0.5,0);
	draw_set_halign(fa_left);
}

if(instance_exists(_inst_continue)){
	draw_sprite(spr_EMpust,0,10,10);
}