switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				Dialog_Add("* Sans - AKT 250 DEF 200.{sleep 20}&* Our old enemy.")
				Dialog_Start()
				break
			case 1:
				Dialog_Add("* You tell him that he's weak.&* He didn't answer.")
				Dialog_Start()
				break
		}
}

_body=0