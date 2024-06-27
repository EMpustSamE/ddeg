/*if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
		/*_body=2
		var random_falsh=choose(0,1)
		if(random_falsh=0){
			Anim_Create(self,"x",0,0,320,80,15)
			Anim_Create(self,"headx",0,0,headx,80,15)
			Anim_Create(self,"bodyx",0,0,bodyx,80,15)
			Anim_Create(self,"legx",0,0,legx,80,15)
			Anim_Create(self,"x",0,0,400,-80,15,40)
			Anim_Create(self,"headx",0,0,headx+80,-80,15,40)
			Anim_Create(self,"bodyx",0,0,bodyx+80,-80,15,40)
			Anim_Create(self,"legx",0,0,legx+80,-80,15,40)
		}
		if(random_falsh=1){
			Anim_Create(self,"x",0,0,320,-80,15)
			Anim_Create(self,"headx",0,0,headx,-80,15)
			Anim_Create(self,"bodyx",0,0,bodyx,-80,15)
			Anim_Create(self,"legx",0,0,legx,-80,15)
			Anim_Create(self,"x",0,0,240,80,15,40)
			Anim_Create(self,"headx",0,0,headx-80,80,15,40)
			Anim_Create(self,"bodyx",0,0,bodyx-80,80,15,40)
			Anim_Create(self,"legx",0,0,legx-80,80,15,40)
	}
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
		/*a = instance_create_depth(0,0,shaker);
		a.target = id;
		a.var_name = "x";
		a.shake_distance = 20;
		a.shake_speed = 3;
		a.shake_random = 0;
		a.shake_decrease = 10;
		audio_play_sound(snd_damage,0,0)
	var attack_damage = instance_create_depth(320,y-30,0,battle_damage)
		attack_damage.bar_hp_max = _hpmax;
		attack_damage.bar_hp_original = _hp;
			Battle_SetMenuFightDamage(-2)
			attack_damage.damage = -2
		attack_damage.bar_hp_target = _hp-Battle_GetMenuFightDamage();
		}
}*/

if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
	a=instance_create_depth(320,y-30,0,battle_damage)
	a.bar_hp_max = _hpmax;
	a.bar_hp_original = _hp;
	Battle_SetMenuFightDamage(-2)
	a.damage = -2
	a.bar_hp_target = _hp-Battle_GetMenuFightDamage();
}