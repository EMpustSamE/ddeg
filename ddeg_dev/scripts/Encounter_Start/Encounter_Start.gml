///@arg encounter_id
///@arg anim*
///@arg exclamation*
function Encounter_Start() {
	var ENCOUNTER=argument[0];
	var ANIM=true;
	var EXCLAM=true;
	if(argument_count>=2){
		ANIM=argument[1];
	}
	if(argument_count>=3){
		EXCLAM=argument[2];
	}

	if(Encounter_IsExists(ENCOUNTER)){
		var landmark=instance_create_depth(char_player.x,char_player.y,0,hint_landmark);
		landmark.landmark_id="battle";
		if(!instance_exists(char_player)){
			ANIM=false;
		}
		if(!ANIM){
			if(Encounter_IsPauseBGM(ENCOUNTER)){
				BGM_Pause(0);
			}
			Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.ENCOUNTER,ENCOUNTER);
			if(!Player_IsInBattle()){
				Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,room);
				Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,"battle");
				Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,char_player.dir);
				room_persistent=true;
			}
			room_goto(room_battle);
		}else{
			var inst=instance_create_depth(0,0,0,encounter_anim);
			inst._encounter=ENCOUNTER;
			inst._exclam=EXCLAM;
			inst._quick=Encounter_IsQuick(ENCOUNTER);
			inst._soul_x=Encounter_GetSoulX(ENCOUNTER);
			inst._soul_y=Encounter_GetSoulY(ENCOUNTER);
		}
		return true;
	}else{
		
		
		return false;
	}


}
