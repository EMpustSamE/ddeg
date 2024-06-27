/// @description Insert description here
// You can wriglobal.krtime = 0te your code in this editor

//alarm[0]=1
INF_hp = 0
Player_SetHpMax(92)
repeat(8){Item_Add(item_tml)}

bg=instance_create_depth(0,0,0,battle_bg)
bg.sin_use=false;
bg.image_xscale=2;
bg.image_yscale=2;
bg.sprite_index=spr_battle_bg_corridor;

// Inherit the parent event
event_inherited();

