///@arg *delay
///@arg *size
function Battle_BoneWallRightAct() {
	var size = 60;
	var time = 10;
	var delay = 0;
	if(argument_count >= 1){
		delay = argument[0];
	}
	if(argument_count >= 2){
		size = argument[1];
	}

	with(battle_bonewall_right){
		box = 1;
		battle_bonewall_right.size = size;
		battle_bonewall_right.time = time;
		alarm[0] = delay;
	}


}
