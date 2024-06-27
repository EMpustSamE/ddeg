if(page==0){
	if(instance_exists(dia_1)){
	instance_destroy(dia_1);
	}
	if(instance_exists(dia_2)){
	instance_destroy(dia_2);
	}
	dia_1=instance_create_depth(50,80,0,text_typer);
	dia_1.text="{font 1}{scale 1.5}{instant true}DIRTYDUST THE ENDLESS ENOCIDE by EMpustSamE&UNDERTALE by Toby Fox&UNDERTALE ENGINE by TML"
	dia_2=instance_create_depth(450,20,0,text_typer);
	dia_2.text="{font 1}{scale 1}{color `gray`}{instant true}Page"+string(page+1)+"/3";
}
if(page==1){
	if(instance_exists(dia_1)){
	instance_destroy(dia_1);
	}
	if(instance_exists(dia_2)){
	instance_destroy(dia_2);
	}
	dia_1=instance_create_depth(60,80,0,text_typer);
	dia_1.text="{font 1}{scale 1.5}{instant true}Fonts used&Determination Sans/Mono,&Mars Needs Cunnilingus,Papyrus&By Toby Fox&SimSun By Beijing ZHONG YI ZHONG Biao&Electronic INFORMATION Technology Co.&方正少儿GBK, 方正卡通 By 方正字库&Comic Sans, Dotumche&By Microsoft&GNU Unifont By Roman Czyborra";
	dia_2=instance_create_depth(450,20,0,text_typer);
	dia_2.text="{font 1}{scale 1}{color `gray`}{instant true}Page"+string(page+1)+"/3";
}
if(page==2){
	if(instance_exists(dia_1)){
	instance_destroy(dia_1);
	}
	if(instance_exists(dia_2)){
	instance_destroy(dia_2);
	}
	dia_1=instance_create_depth(40,80,0,text_typer);
	dia_1.text="{font 1}{scale 1.5}{instant true}Extra-Board and Cover-Board&Integrat By OneZhaZha&Codes to draw background effect By Siki&Initial achieve of Cover-Board By 穹c啋f汾&Completely achieve of Extra-Board By 奇迹丶零&(Original codes are from jkjkil4 on Gitee)"
	dia_2=instance_create_depth(450,20,0,text_typer);
	dia_2.text="{font 1}{scale 1}{color `gray`}{instant true}Page"+string(page+1)+"/3";
}