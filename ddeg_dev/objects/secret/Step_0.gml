_angle++;
_sin+=0.01;

if(Input_IsPressed(INPUT.CANCEL)){
	if(room_exists(Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.SECRET_ROOM_RETURN))){
		fader.alpha=1;
		room_goto(Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.SECRET_ROOM_RETURN));
		Fader_Fade(-1,0,20);
		BGM_Resume(0);
		BGM_SetVolume(0,0);
		BGM_SetVolume(0,1,50);
	}
}