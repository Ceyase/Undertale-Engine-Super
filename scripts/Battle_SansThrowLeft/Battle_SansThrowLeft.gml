///@arg *pause
function Battle_SansThrowLeft() {
	var PAUSE = 0;
	if(argument_count >= 1)PAUSE = argument[0];
	with(battle_enemy_sans){
		if(arm = 0){
			arm = 4;
			body.sprite_index = spr_battle_enemy_body_left;
			pause = PAUSE;
		}	
	}
	Battle_SetSoul(battle_soul_blue_left)
	battle_soul._move = 15
	battle_soul.shake = 1


}
