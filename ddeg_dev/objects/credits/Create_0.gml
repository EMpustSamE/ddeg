if(current_month>=3&&current_month<=5&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if(current_month>=6&&current_month<=8&&!audio_is_playing(bgm_menu_summer)){
BGM_Play(0,bgm_menu_summer,true,1,1)}
if(current_month>=9&&current_month<=11&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if((current_month=12||current_month<=2)&&!audio_is_playing(bgm_menu_winter)){
BGM_Play(0,bgm_menu_winter,true,1,1)}

_sin=0;
maker_angle=0;
alarm[0]=1;

_title=instance_create_depth(260,10,0,text_typer);
_title.text="{font 1}{scale 2}{instant true}CREDITS"

dia_1=noone;
dia_2=noone;

prefix = "{gui true}{instant true}{shadow false}{font 1}{scale 2}";
page=0;

event_user(0);