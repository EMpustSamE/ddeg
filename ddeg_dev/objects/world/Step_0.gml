Anim_Step();
BGM_Step();
Bezier_Step();
if(_time>=60){
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.TIME,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)+1);
	_time=0;
}else{
	_time+=1;
}

if(Game_GetFrameSkip()>0){
	if(_frame_skip>=Game_GetFrameSkip()){
		draw_enable_drawevent(true);
		_frame_skip=0;
	}else{
		_frame_skip+=1;
		draw_enable_drawevent(false);
	}
}else{
	draw_enable_drawevent(true);
}

if(keyboard_check_pressed(vk_f2)){
	game_restart();
}




if(keyboard_check_pressed(vk_f4)&&!keyboard_check(vk_alt)&&!keyboard_check(vk_control)&&!keyboard_check(vk_shift)){
	window_set_fullscreen(!window_get_fullscreen());
}

if(volume<=0){
	volume=0;
}
if(volume>=1){
	volume=1;
}
audio_master_gain(volume)

if(room!=room_secret){
	if(keyboard_check(ord("E"))&&keyboard_check(ord("P"))&&keyboard_check(ord("S"))&&keyboard_check(ord("A"))){
		goto_secret();
	}
}