///@arg *delay
///@arg *size
function Battle_BoneWallDownAct() {
	var size = 60;
	var time = 10;
	var delay = 0;
	if(argument_count >= 1){
		delay = argument[0];
	}
	if(argument_count >= 2){
		size = argument[1];
	}

	with(battle_bonewall_down){
		box = 1;
		battle_bonewall_down.size = size;
		battle_bonewall_down.time = time;
		alarm[0] = delay;
	}


}
