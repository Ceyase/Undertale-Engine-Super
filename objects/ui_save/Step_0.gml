if(_state==-1){
	if(!instance_exists(ui_dialog)){
		_state=0;
		event_user(0);
	}
}else if(_state==0){
	if(keyboard_check_pressed(vk_left)){
		if(_choice==1){
			_choice=0;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(vk_right)){
		if(_choice==0){
			_choice=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(ord("Z"))){
		if(_choice==0){
			_state=1;
			event_user(0);
		}else{
			instance_destroy();
		}
	}else if(keyboard_check_pressed(ord("X"))){
		instance_destroy();
	}
}else if(_state==1){
	if(keyboard_check_pressed(ord("Z"))||keyboard_check_pressed(ord("X"))){
		instance_destroy();
	}
}