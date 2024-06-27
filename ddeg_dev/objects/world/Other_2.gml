global.debug = 1;
global.undead = 0;
window_set_size(640,480);

Anim_Init();
Bezier_Init();
Shop_Init()

instance_create_depth(0,0,depth,obj_debug);

Input_Init();
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,vk_enter);
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,ord("Z"));
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,vk_shift);
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,ord("X"));
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,vk_control);
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,ord("C"));
Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);
Flag_Init();

Encounter_Init();

BGM_Init();

Dialog_Init();

Demo_Init();

instance_create_depth(0,0,0,camera);
instance_create_depth(0,0,0,fader);
instance_create_depth(0,0,0,border);
instance_create_depth(0,0,0,closed_captions);

application_surface_draw_enable(false);

//Border_SetEnabled(true);

var default_lang;
if(os_get_language()=="zh"){
	default_lang=1;
}
Language_Set(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,default_lang))



randomize();

room_goto_next();