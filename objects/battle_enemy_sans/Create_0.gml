/// @description Insert description here
// You can write your code in this editor
event_inherited();
Player_SetLv(19)
Player_SetHpMax(97)
Player_SetHp(97)
//em_Add(item_Ceyase)

legs = instance_create_depth(x,y,0,battle_enemy_legs)
body = instance_create_depth(x,y-80,0,battle_enemy_body)
head = instance_create_depth(x,y-80,0,battle_enemy_head)

animsin = 0
sinn = 0.25
mode = 0

legsx = legs.xstart
bodyx = body.xstart
headx = head.xstart

legsy = legs.ystart
bodyy = body.ystart
heady = head.ystart

armx = 0
army = 0

arm = 0
pause = 0

lock = 1

alarm[1] = 20

instance_create_depth(0,0,0,battle_bonewall_down)
instance_create_depth(0,0,0,battle_bonewall_up)
instance_create_depth(0,0,0,battle_bonewall_left)
instance_create_depth(0,0,0,battle_bonewall_right)