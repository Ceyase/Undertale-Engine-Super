/// @description Insert description here
// You can write your code in this editor
if(Battle_GetState() = BATTLE_STATE.IN_TURN&&mode == 0){
	Player_HurtKR();
}
if(Battle_GetState() = BATTLE_STATE.IN_TURN&&mode == 1){
	if(battle_soul._inv = 0){
	battle_soul._inv = 30
	Player_Hurt(10);
	audio_play_sound(snd_hurt,0,0)
	global.DEBUFF += 1
	}
}