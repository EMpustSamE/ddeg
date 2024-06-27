switch (type) {
    case 0:
        if(instance_exists(battle_ui)&&battle_ui.kr_enable){
		    Player_HurtKR();
		}else{
			Player_Hurt(2)
		};
        break;
    case 1:
        if (global.moving) {
            if(instance_exists(battle_ui)&&battle_ui.kr_enable){
			    Player_HurtKR();
			}else{
				Player_Hurt(2)
			};
        }
        break;
    case 2:
        if (!global.moving) {
            if(instance_exists(battle_ui)&&battle_ui.kr_enable){
			 Player_HurtKR();
			}else{
				Player_Hurt(2)
			};
        }
        break;
    case 3:
        Player_Heal(1);
        break;
    case 4:
        if(instance_exists(battle_ui)&&battle_ui.kr_enable){
		        Player_HurtKR();
			}else{
				Player_Hurt(2)
			};
        break;
}

if (disposable) {
    instance_destroy();
}

if(instance_exists(battle_ui)&&!battle_ui.kr_enable){
	event_inherited();
}