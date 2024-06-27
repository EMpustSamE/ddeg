if(text==""){
	Dialog_Add("* Use the box?")
}else{
	Dialog_Add(text)
}
Dialog_Start(1,"Yes","No")
interact = 1
char_player.moveable = false