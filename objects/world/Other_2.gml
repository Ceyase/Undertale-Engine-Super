Console_Init();
Console_SetStatusNumber(3);
Console_SetStatusRatio(0,2/11);
Console_SetStatusRatio(1,8/11);
Console_SetStatusRatio(2,11/11);

Input_Init();
Input_Bind(ord("Z"),INPUT_TYPE.KEYBOARD,0,vk_enter);
Input_Bind(ord("Z"),INPUT_TYPE.KEYBOARD,0,ord("Z"));
Input_Bind(ord("X"),INPUT_TYPE.KEYBOARD,0,vk_shift);
Input_Bind(ord("X"),INPUT_TYPE.KEYBOARD,0,ord("X"));
Input_Bind(ord("C"),INPUT_TYPE.KEYBOARD,0,vk_control);
Input_Bind(ord("C"),INPUT_TYPE.KEYBOARD,0,ord("C"));
Input_Bind(vk_up,INPUT_TYPE.KEYBOARD,0,vk_up);
Input_Bind(vk_down,INPUT_TYPE.KEYBOARD,0,vk_down);
Input_Bind(vk_left,INPUT_TYPE.KEYBOARD,0,vk_left);
Input_Bind(vk_right,INPUT_TYPE.KEYBOARD,0,vk_right);

Lang_Init();
Lang_LoadList();
Lang_LoadString(0);
Lang_LoadSprite(0);
Lang_LoadFont(0);

Flag_Init();

Encounter_Init();

BGM_Init();

Dialog_Init();

instance_create_depth(0,0,0,camera);
instance_create_depth(0,0,0,fader);
instance_create_depth(0,0,0,border);
instance_create_depth(0,0,0,closed_captions);

application_surface_draw_enable(false);

//Border_SetEnabled(true);

Console_OutputLine("UNDERTALE by Toby Fox");
Console_OutputLine("UNDERTALE Engine by TML");
Console_OutputLine("Engine Version: "+ENGINE_VERSION);
Console_OutputLine("Game Name: "+GAME_NAME);
Console_OutputLine("Game Author: "+GAME_AUTHOR);
Console_OutputLine("Game Version: "+GAME_VERSION);
Console_OutputLine("Game GUID: "+GAME_GUID);

//show_debug_overlay(true);

room_goto_next();