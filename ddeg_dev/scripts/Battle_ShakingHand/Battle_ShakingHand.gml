///@arg target,spr_normal,spr_anim,spr_end,*keep_time
function Battle_ShakingHand(){
	if(Player_IsInBattle()){
		var TARGET=argument[0];
		var SPR_1=argument[1];
		var SPR_2=argument[2];
		var SPR_3=argument[3];
		var KEEP=30;
		if(argument_count>3){
			KEEP=argument[4];
		}
		Anim_Create(TARGET,"_body",0,0,SPR_1,SPR_2-SPR_1,0);
		Anim_Create(TARGET,"_body",0,0,SPR_2,SPR_3-SPR_2,0,5);
		Anim_Create(TARGET,"_body",0,0,SPR_3,-(SPR_3-SPR_1),0,KEEP);
		return true;
	}else{
		return false;
	}
}