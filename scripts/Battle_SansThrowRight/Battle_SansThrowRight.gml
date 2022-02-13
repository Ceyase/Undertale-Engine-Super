///@arg *pause
function Battle_SansThrowRight() {
	var PAUSE = 0;
	if(argument_count >= 1)PAUSE = argument[0];
	with(battle_enemy_sans){
		if(arm = 0){
			arm = 3;
			body.sprite_index = spr_battle_enemy_body_right;
			pause = PAUSE;
		}	
	}
	Battle_SetSoul(battle_soul_blue_right)
	battle_soul._move = 15
	battle_soul.shake = 1


}
