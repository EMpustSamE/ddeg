///@desc Interact
if(!dir_locked){
	dir=(char_player.dir+180)%360;
}

Dialog_Add("* You picked up the sh*t.{pause}{clear}* You fell very& {color `red`}DISGUSTED{color `white`}.")
Dialog_Start()
Item_Add(item_EMpust)
instance_destroy()