switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				Dialog_Add("* Papyrus - ATK ??? DEF ???{sleep 20}&* Is he even... real?")
				Dialog_Start()
				break
			case 1:
				Dialog_Add("* You tried to talk with him.{sleep 20}&* ...{sleep 20}&* No answer.")
				Dialog_Start()
				break
		}
}