Dialog_Add(Item_GetTextEquip(_name));
Dialog_Start()

Item_Set(_item_slot,Item_GetArmor());
Item_SetArmor(object_index);

Player_SetDefItem(5);
Player_SetInvItem(9);

audio_play_sound(snd_item_equip,0,false);

event_inherited();