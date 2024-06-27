page=0;
_alpha=0;
application_surface_draw_enable(false);
display_set_gui_size(640, 480);
sf=surface_create(640, 480);
channel_shift=0.005555;
channel_dispersion=0.0045;
shd=0;

Anim_Create(self,"_alpha",0,0,0,1,30);

_inst_story=instance_create_depth(60,160,0,text_typer);
if(global.language==LANGUAGE.ENGLISH){
	_inst_story.text="{skippable false}{voice 1}{speed 3}{space_y 5}{font 1}There was a human fallen from&MT. EBOTT.{sleep 60}{story_next_page}{clear}That human killed the monsters&again and again.{sleep 60}{story_next_page}{clear}Sans tried to stop the human&by killing other monsters to&make him stronger.{sleep 60}{story_next_page}{clear}Bun he failed{sleep 10}&again,{sleep 10}&and again.{sleep 60}{story_next_page}{clear}But this time,{sleep 10}{story_next_page}&everything will be{sleep 10}{story_next_page}&MORE INTERESTING.{story_end}"
}else if(global.language==LANGUAGE.SCHINESE){
	_inst_story.text="{skippable false}{voice 1}{speed 6}{space_y 5}{font 1}从前有个人类从&伊波特山坠下。{sleep 60}{story_next_page}{clear}那个人类杀了所有怪物&一遍又一遍。{sleep 60}{story_next_page}{clear}杉斯尝试以杀死怪物让他&变得更强来阻止人类。{sleep 60}{story_next_page}{clear}但他失败了，{sleep 10}&一遍，{sleep 10}&又一遍。{sleep 60}{story_next_page}{clear}但是这次，{sleep 10}{story_next_page}&所有事情将会变得{sleep 10}{story_next_page}&更加有趣。{story_end}"
}