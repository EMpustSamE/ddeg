Dialog_Add("* You throw this sh*t&  on the ground.{pause}{clear}* You feel nice just like pooped.")
Dialog_Start()
Item_Remove(_item_slot)
if(char_player.dir=DIR.LEFT){
	instance_create_depth(char_player.x-20,char_player.y,220,char_item_EMpust)
}
if(char_player.dir=DIR.DOWN){
	instance_create_depth(char_player.x,char_player.y+20,220,char_item_EMpust)
}
if(char_player.dir=DIR.RIGHT){
	instance_create_depth(char_player.x+20,char_player.y,220,char_item_EMpust)
}
if(char_player.dir=DIR.UP){
	instance_create_depth(char_player.x,char_player.y-20,220,char_item_EMpust)
}