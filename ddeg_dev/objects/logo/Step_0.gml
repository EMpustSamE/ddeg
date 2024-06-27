time++;

if(time==42){
	audio_play_sound(snd_explosion,0,0)
	Anim_Create(self,"DUST_x",ANIM_TWEEN.QUART,ANIM_EASE.OUT,200,302,30);
	Anim_Create(self,"TALE_x",ANIM_TWEEN.QUART,ANIM_EASE.OUT,440,50,50);
	Anim_Create(self,"TALE_y",ANIM_TWEEN.QUART,ANIM_EASE.IN,240,400,50);
	Anim_Create(self,"TALE_angle",ANIM_TWEEN.QUART,ANIM_EASE.IN,0,-100,50);
	Anim_Create(self,"SOUL_alpha",0,0,0,1,30,100);
	Anim_Create(self,"SOUL_index",0,0,0,1,0,150);
	Anim_Create(self,"SOUL_index",0,0,1,1,0,250);
	Anim_Create(self,"TEETH_width",ANIM_TWEEN.QUART,ANIM_EASE.IN,0,6,20,280)
	Anim_Create(self,"y",ANIM_TWEEN.QUART,ANIM_EASE.OUT,240,-190,40,320);
}

if(time==340){
	_alpha=0;
	_alpha_full=1;
	Anim_Create(self,"full_scale",ANIM_TWEEN.QUART,ANIM_EASE.OUT,6,-3,40,24);
	Anim_Create(self,"text_y",ANIM_TWEEN.QUART,ANIM_EASE.OUT,340,-240,40,24);
	Anim_Create(self,"text_x",ANIM_TWEEN.QUART,ANIM_EASE.OUT,320,10,40,24);
}

if(time==404){
	room_goto(room_menu);
}