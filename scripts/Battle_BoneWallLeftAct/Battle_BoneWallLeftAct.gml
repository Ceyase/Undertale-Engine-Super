///@arg *delay
///@arg *size
function Battle_BoneWallLeftAct() {
	var size = 60;
	var time = 10;
	var delay = 0;
	if(argument_count >= 1){
		delay = argument[0];
	}
	if(argument_count >= 2){
		size = argument[1];
	}

	with(battle_bonewall_left){
		box = 1;
		battle_bonewall_left.size = size;
		battle_bonewall_left.time = time;
		alarm[0] = delay;
	}


}
