audio_stop_sound(bgm_rickroll);
audio_play_sound(bgm_rickroll,0,0);

_angle=0;
_sin=0;

prefix = "{gui true}{instant true}{shadow false}{font 1}{scale 2}";

_inst_title=instance_create_depth(240,10,0,text_typer);
_inst_title.text=prefix+"WOW U FOUND A SECRET111";
_inst_return=instance_create_depth(240,260,0,text_typer);
_inst_return.text=prefix+"PRESS [X] TO GO BACK";