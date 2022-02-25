var can_move=(moveable&&_moveable_dialog&&_moveable_menu&&_moveable_save&&_moveable_warp&&_moveable_encounter&&_moveable_box);
if(can_move){
	if(Input_Check(vk_up)){
		move[DIR.UP]=2;
	}else if(Input_Check(vk_down)){
		move[DIR.DOWN]=2;
	}
	if(Input_Check(vk_left)){
		move[DIR.LEFT]=2;
	}else if(Input_Check(vk_right)){
		move[DIR.RIGHT]=2;
	}
	if(keyboard_check_pressed(ord("Z"))){
		var inst=noone;
		if(dir==DIR.UP){
			inst=collision_rectangle(x-sprite_width/2+4,y-5,x+sprite_width/2-4,y-sprite_height+5,char,false,true);
		}
		if(dir==DIR.DOWN){
			inst=collision_rectangle(x-sprite_width/2+4,y-sprite_height+20,x+sprite_width/2-4,y+15,char,false,true);
		}
		if(dir==DIR.LEFT){
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2-15,y,char,false,true);
		}
		if(dir==DIR.RIGHT){
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2+15,y,char,false,true);
		}
		if(instance_exists(inst)){
			with(inst){
				event_user(0);
			}
		}
	}
	if(!instance_exists(ui_dialog)){
		if(keyboard_check_pressed(ord("C"))){
			instance_create_depth(0,0,0,ui_menu);
		}
	}
}

event_inherited();