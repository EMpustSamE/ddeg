b=instance_create_depth(random(room_width+10), 0, 0, obj_season_effect)
b.image_xscale=1
b.image_yscale=1
b.alarm[0]=-1
b.alarm[1]=1

maker_angle--;

if(Input_IsPressed(INPUT.CANCEL)){
	room_goto(room_menu);
}

if(Input_IsPressed(INPUT.RIGHT)&&page<=1){
	page+=1;
	audio_play_sound(snd_menu_switch,0,0)
	event_user(0);
}
if(Input_IsPressed(INPUT.LEFT)&&page>=1){
	page-=1;
	audio_play_sound(snd_menu_switch,0,0)
	event_user(0);
}