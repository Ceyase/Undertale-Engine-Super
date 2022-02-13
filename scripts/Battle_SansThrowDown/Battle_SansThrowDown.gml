///@arg *pause
function Battle_SansThrowDown() {
	var PAUSE = 0;
	if(argument_count >= 1)PAUSE = argument[0];
	with(battle_enemy_sans){
		if(arm = 0){
			arm = 1;
			body.sprite_index = spr_battle_enemy_body_down;
			pause = PAUSE;
		}	
	}
	Battle_SetSoul(battle_soul_blue_down)
	battle_soul._move = 5
	battle_soul.shake = 1


}
