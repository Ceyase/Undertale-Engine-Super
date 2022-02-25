/// @description Insert description here
// You can write your code in this editor
if(Battle_GetMenu() = BATTLE_MENU.FIGHT_ANIM){
	Anim_Create(id,"legsx",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,legsx,-120,30);
	Anim_Create(id,"bodyx",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,legsx,-120,30);
	Anim_Create(id,"headx",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,legsx,-120,30);
	Anim_Create(id,"legs.xstart",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,legsx,-120,30);
	Anim_Create(id,"body.xstart",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,legsx,-120,30);
	Anim_Create(id,"head.xstart",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,legsx,-120,30);
	alarm[0] = 60;
}
if(Battle_GetMenu() = BATTLE_MENU.FIGHT_DAMAGE){
	a = instance_create_depth(x,y-150,0,battle_damage);
	a.damage = -1;
}