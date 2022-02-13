///@arg *pause
function Battle_SansThrowUp() {
	var PAUSE = 0;
	if(argument_count >= 1)PAUSE = argument[0];
	with(battle_enemy_sans){
		if(arm = 0){
			arm = 2;
			body.sprite_index = spr_battle_enemy_body_up;
			pause = PAUSE;
		}	
	}
	Battle_SetSoul(battle_soul_blue_up)
	battle_soul._move = 15
	battle_soul.shake = 1


}
