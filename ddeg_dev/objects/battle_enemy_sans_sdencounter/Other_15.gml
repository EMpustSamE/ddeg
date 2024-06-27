switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				Dialog_Add("* Sans - AKT 100 DEF 75.{sleep 20}&* Looks scared.")
				Dialog_Start()
				break
			case 1:
				Dialog_Add("* He's just shocking in&  the snow and {color `red`}DUST{color `white`}.")
				Dialog_Start()
				break
		}
}

_body=0