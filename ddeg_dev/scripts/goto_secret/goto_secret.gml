// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function goto_secret(){
	if(instance_exists(char_player)){
		var landmark=instance_create_depth(char_player.x,char_player.y,0,hint_landmark);
		landmark.landmark_id="secret";
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.SECRET_ROOM_RETURN,room);
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,"secret");
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,char_player.dir);
		room_goto(room_secret);
	}
}