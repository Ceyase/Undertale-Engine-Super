if (keyboard_check_pressed(vk_f10))
{
    if (DEBUG == 0)
        DEBUG = 1
    else if (DEBUG == 1)
        DEBUG = 0
}
if(DEBUG = 1){
	if (keyboard_check_pressed(ord("A")))Battle_SetTurnNumber(Battle_GetTurnNumber() - 1)
	if (keyboard_check_pressed(ord("D")))Battle_SetTurnNumber(Battle_GetTurnNumber() + 1)
	if (keyboard_check(ord("W")))Player_SetHpMax(Player_GetHpMax() + 1)
	if (keyboard_check(ord("S")))Player_SetHpMax(Player_GetHpMax() - 1)
}
	