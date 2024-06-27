///@arg dir,*impact_speed
function BlueSoulControl(){
	
		Battle_SetSoul(battle_soul_blue)
	
	battle_soul.impact=true
	battle_soul.dir=argument[0]
	if(argument_count>1){
	battle_soul.move=argument[1]}else{
	battle_soul.move=10}
	battle_soul.jump_state = 2;
	battle_soul.on_block = 0;
	battle_soul.on_board = 0;
	battle_soul.on_platform = 0;
}

///@arg dir,*impact_speed,*sprite_keep_time
function BlueSoulControlSans(){
	if(argument_count>1){
		BlueSoulControl(argument[0],argument[1])
		if(argument_count>2){
			var KEEP=argument[2];
			switch(argument[0]){
				case DIR.UP:
					Battle_ShakingHand(battle_enemy_sans_p1,0,7,6,KEEP);
					break;
				case DIR.DOWN:
					Battle_ShakingHand(battle_enemy_sans_p1,0,7,1,KEEP);
					break;
				case DIR.LEFT:
					Battle_ShakingHand(battle_enemy_sans_p1,0,4,3,KEEP);
					break;
				case DIR.RIGHT:
					Battle_ShakingHand(battle_enemy_sans_p1,0,4,5,KEEP);
					break;
			}
		}else{
			BlueSoulControl(argument[0],argument[1])
			switch(argument[0]){
				case DIR.UP:
					Battle_ShakingHand(battle_enemy_sans_p1,0,7,6);
					break;
				case DIR.DOWN:
					Battle_ShakingHand(battle_enemy_sans_p1,0,7,1);
					break;
				case DIR.LEFT:
					Battle_ShakingHand(battle_enemy_sans_p1,0,4,3);
					break;
				case DIR.RIGHT:
					Battle_ShakingHand(battle_enemy_sans_p1,0,4,5);
					break;
			}
		}
	}else{
		if(argument_count>2){
			var KEEP=argument[2];
			switch(argument[0]){
				case DIR.UP:
					Battle_ShakingHand(battle_enemy_sans_p1,0,7,6,KEEP);
					break;
				case DIR.DOWN:
					Battle_ShakingHand(battle_enemy_sans_p1,0,7,1,KEEP);
					break;
				case DIR.LEFT:
					Battle_ShakingHand(battle_enemy_sans_p1,0,4,3,KEEP);
					break;
				case DIR.RIGHT:
					Battle_ShakingHand(battle_enemy_sans_p1,0,4,5,KEEP);
					break;
			}
		}else{
			BlueSoulControl(argument[0],argument[1])
			switch(argument[0]){
				case DIR.UP:
					Battle_ShakingHand(battle_enemy_sans_p1,0,7,6);
					break;
				case DIR.DOWN:
					Battle_ShakingHand(battle_enemy_sans_p1,0,7,1);
					break;
				case DIR.LEFT:
					Battle_ShakingHand(battle_enemy_sans_p1,0,4,3);
					break;
				case DIR.RIGHT:
					Battle_ShakingHand(battle_enemy_sans_p1,0,4,5);
					break;
			}
		}
	}
}