function Player_HurtKR() {
	var _temp_local_var_1,time=0;

	time += 1;
	if(time = 2)time = 0;

	if(time = 1){
	if (Player_GetHp() > 1)
	{
	    Player_Hurt(2)
	    Player_SetKR(Player_GetKR() + 1);
	}
	else
	    Player_SetKR(Player_GetKR() - 1);
	if (Player_GetHp() == 1)
	    _temp_local_var_1 = (Player_GetKR() <= 0);
	else
	    _temp_local_var_1 = 0;
	if _temp_local_var_1{
		battle_soul._move = 0;
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X,x-camera.x);
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y,y-camera.y);
		room_goto(room_gameover);
	}
		audio_stop_sound(snd_hurt);
		audio_play_sound(snd_hurt,0,false);
	}


}
