if(instance_exists(ui_dialog)){
	if(_menu!=-1){
		_menu=-1;
		event_user(0);
	}
}

if(_menu==-1){
	if(!instance_exists(ui_dialog)){
		instance_destroy();
	}
}else if(_menu==0){
	if(keyboard_check_pressed(vk_up)){
		if(_choice>0){
			_choice-=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(vk_down)){
		if(_choice<(Phone_GetNumber()>0 ? 2 : 1)){
			_choice+=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(ord("Z"))){
		switch(_choice){
			case 0:
				if(Item_GetNumber()>0){
					_menu=1;
					event_user(0);
					audio_play_sound(snd_menu_confirm,0,false);
				}
				break;
			case 1:
				_menu=3;
				event_user(0);
				audio_play_sound(snd_menu_confirm,0,false);
				break;
			case 2:
				_menu=4;
				event_user(0);
				audio_play_sound(snd_menu_confirm,0,false);
				break;
		}
	}else if(keyboard_check_pressed(ord("C"))||keyboard_check_pressed(ord("X"))){
		instance_destroy();
	}
}else if(_menu==1){
	if(keyboard_check_pressed(vk_up)){
		if(_choice_item>0){
			_choice_item-=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(vk_down)){
		if(_choice_item<Item_GetNumber()-1){
			_choice_item+=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(ord("Z"))){
		_menu=2;
		event_user(0);
		audio_play_sound(snd_menu_confirm,0,false);
	}else if(keyboard_check_pressed(ord("X"))){
		_menu=0;
		event_user(0);
	}
}else if(_menu==2){
	if(keyboard_check_pressed(vk_left)){
		if(_choice_item_operate>0){
			_choice_item_operate-=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(vk_right)){
		if(_choice_item_operate<2){
			_choice_item_operate+=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(ord("Z"))){
		//TODO
		_menu=-1;
		event_user(0);
		switch(_choice_item_operate){
			case 0:
				Item_CallEvent(Item_Get(_choice_item),ITEM_EVENT.USE,_choice_item);
				break;
			case 1:
				Item_CallEvent(Item_Get(_choice_item),ITEM_EVENT.INFO,_choice_item);
				break;
			case 2:
				Item_CallEvent(Item_Get(_choice_item),ITEM_EVENT.DROP,_choice_item);
				break;
		}
		audio_play_sound(snd_menu_confirm,0,false);
	}else if(keyboard_check_pressed(ord("X"))){
		_menu=1;
		event_user(0);
	}
}else if(_menu==3){
	if(keyboard_check_pressed(ord("X"))){
		_menu=0;
		event_user(0);
	}
}else if(_menu==4){
	if(keyboard_check_pressed(vk_up)){
		if(_choice_phone>0){
			_choice_phone-=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(vk_down)){
		if(_choice_phone<Phone_GetNumber()-1){
			_choice_phone+=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(keyboard_check_pressed(ord("Z"))){
		Phone_CallEvent(Phone_Get(_choice_phone),PHONE_EVENT.CALL,_choice_phone);
		_menu=-1;
		event_user(0);
		audio_play_sound(snd_menu_confirm,0,false);
	}else if(keyboard_check_pressed(ord("X"))){
		_menu=0;
		event_user(0);
	}
}