if(_state==-1){
	if(!instance_exists(ui_dialog)){
		_state=0;
		event_user(0);
	}
}else if(_state==0){
	if(keyboard_check_pressed(vk_up)){
		if(_choice_item>0){
			_choice_item-=1;
		}
	}else if(keyboard_check_pressed(vk_down)){
		if((_choice_mode==0 && _choice_item<7) || (_choice_mode==1 && _choice_item<9)){
			_choice_item+=1;
		}
	}else if(keyboard_check_pressed(vk_right)){
		_choice_mode=1;
	}else if(keyboard_check_pressed(vk_left)){
		_choice_mode=0;
		if(_choice_item>7){
			_choice_item=7;
		}
	}else if(keyboard_check_pressed(ord("Z"))){
		if(_choice_mode==0){
			var target=Item_Get(_choice_item);
			if(Item_IsValid(target) && Box_GetNumber(box_slot)<10){
				Item_Remove(_choice_item);
				Box_Add(box_slot,target);
				event_user(1);
			}
		}else{
			var target=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+10*box_slot+_choice_item);
			if(Item_IsValid(target) && Item_GetNumber()<8){
				Box_Remove(box_slot,_choice_item);
				Item_Add(target);
				event_user(1);
			}
		}
	}else if(keyboard_check_pressed(ord("X"))){
		instance_destroy();
	}
}