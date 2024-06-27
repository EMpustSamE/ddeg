///@desc Name Check
var text="";
var valid=true;
if(global.language=LANGUAGE.ENGLISH){
	switch(string_lower(_naming_name)){
		default:
			text="Is this name correct?";
			break;
		case "aaaaaa":
			text="Not very creative...?";
			break;
		case "alphys":
			text="D-don't do that.";
			valid=false;
			break;
		case "alphy":
			text="Uh.... OK?";
			break;
		case "asgore":
			text="You cannot.";
			valid=false;
			break;
		case "toriel":
			text="I think you should&think of your own&name, my child.";
			valid=false;
			break;
		case "asriel":
			text="...";
			valid=false;
			break;
		case "flowey":
			text="I already CHOSE&that name.";
			valid=false;
			break;
		case "sans":
			text="{font 3}nope.";
			valid=false;
			break;
		case "papyru":
			text="{font 4}I'LL ALLOW IT!!!!";
			break;
		case "undyne":
			text="Get your OWN name!";
			valid=false;
			break;
		case "mtt":
		case "metta":
		case "mett":
			text="OOOOH!!! ARE YOU&PROMOTING MY BRAND?";
			break;
		case "chara":
			text="The true name.";
			break;
	}
}
if(global.language=LANGUAGE.SCHINESE){
	switch(string_lower(_naming_name)){
		default:
			text="这个名字正确吗？";
			break;
		case "aaaaaa":
			text="不是很有创造性...？";
			break;
		case "alphys":
			text="别...别这样。";
			valid=false;
			break;
		case "alphy":
			text="呃...可以？";
			break;
		case "asgore":
			text="你不能。";
			valid=false;
			break;
		case "toriel":
			text="我觉得你应该&想一个自己的&名字，我的孩子。";
			valid=false;
			break;
		case "asriel":
			text="...";
			valid=false;
			break;
		case "flowey":
			text="我已经选了&那个名字。";
			valid=false;
			break;
		case "sans":
			text="{font 3}不行。";
			valid=false;
			break;
		case "papyru":
			text="{font 4}我准了！！！！";
			break;
		case "undyne":
			text="拿个自己的名字！";
			valid=false;
			break;
		case "mtt":
		case "metta":
		case "mett":
			text="噢噢噢噢！！！你在&给我打广告吗？";
			break;
		case "chara":
			text="真正的名字。";
			break;
	}
}

_confirm_title=text;
_confirm_valid=valid;