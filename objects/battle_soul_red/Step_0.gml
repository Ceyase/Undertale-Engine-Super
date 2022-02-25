event_inherited();

//移动
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()
	var SPD=(Input_Check(ord("X")) ? SPD/2 : SPD);
	repeat(SPD*10){
		if(Input_Check(vk_up)){
			if(!position_meeting(x,y-sprite_height/2,block)){
				y-=0.1;
			}
		}
		if(Input_Check(vk_down)){
			if(!position_meeting(x,y+sprite_height/2,block)){
				y+=0.1;
			}
		}
		if(Input_Check(vk_left)){
			if(!position_meeting(x-sprite_width/2,y,block)){
				x-=0.1;
			}
		}
		if(Input_Check(vk_right)){
			if(!position_meeting(x+sprite_width/2,y,block)){
				x+=0.1;
			}
		}
	}
}