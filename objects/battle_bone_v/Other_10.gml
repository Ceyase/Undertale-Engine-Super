/// @description Insert description here
// You can write your code in this editor
if(mode = 0){
	Player_HurtKR();
}
if(mode = 1){
	if!(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious)Player_HurtKR();
}
if(mode = 2){
	if(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious)Player_HurtKR();
}