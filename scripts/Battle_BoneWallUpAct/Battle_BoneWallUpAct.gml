///@arg *delay
///@arg *size
function Battle_BoneWallUpAct() {
	var size = 60;
	var time = 10;
	var delay = 0;
	if(argument_count >= 1){
		delay = argument[0];
	}
	if(argument_count >= 2){
		size = argument[1];
	}

	with(battle_bonewall_up){
		box = 1;
		battle_bonewall_up.size = size;
		battle_bonewall_up.time = time;
		alarm[0] = delay;
	}


}
