draw_sprite_ext(spr_logo,4,DUST_x,y,_size,_size,0,c_white,_alpha);
draw_sprite_ext(spr_logo,5,TALE_x,TALE_y,_size,_size,TALE_angle,c_white,_alpha);
draw_sprite_ext(spr_logo,3,DIRTY_x,y,_size,_size,0,c_white,_alpha);
draw_sprite_ext(spr_logo,SOUL_index,340,y,_size,_size,0,c_white,SOUL_alpha);
draw_sprite_ext(spr_logo,6,340,y+60,TEETH_width,_size,0,c_white,_alpha);
draw_sprite_ext(spr_logo,7,347,y+2,full_scale,full_scale,0,c_white,_alpha_full);

if(_hint){
	draw_set_font(font_determination_sans);
	draw_set_halign(fa_middle);
	draw_set_color(c_red);
	draw_text_ext_transformed(text_x,text_y,"THE ENDLESS GENOCIDE",9,-1,full_scale / 3,full_scale / 3,0);
	draw_set_halign(fa_left);
}