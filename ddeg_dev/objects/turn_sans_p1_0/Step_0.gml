event_inherited();

if(!instance_exists(battle_dialog_enemy)){
	start=1;
}

switch(time){
	case 5:
		BlueSoulControlSans(DIR.DOWN,10,30);
		break;
	case 10:
		Battle_MakeBoneBottom(220,20,5,0,0,0,0);
		Battle_MakeBoneBottom(410,20,-5,0,0,0,0);
		break;
}