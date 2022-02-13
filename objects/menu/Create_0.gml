instance_create_depth(x,y,-9999,obj_mouse)
xx = 0
ff = 0
time = 0
switchable = 1
Player_SetInv(30)
Player_SetSpd(2)
sndable = 1
mb = 1
battle_1_spr = 37
_room = 0
px1 = 0
pa1 = 1
mini = 0
fader.color = 0
window_set_caption("Ceyase's GAME (By Bilibili Ceyase)")
FIGHT_SYSTEM = instance_create_depth(0,0,0,MENUAN)
FIGHT_SYSTEM._XZ = "VK_SANS"
FIGHT_SYSTEM1 = instance_create_depth(0,0,0,MENUAN)
FIGHT_SYSTEM1.xx = 270
FIGHT_SYSTEM1._XZ = "HS_SANS"
FIGHT_SYSTEM1 = instance_create_depth(0,0,0,MENUAN)
FIGHT_SYSTEM1.xx = 270	+ 110
FIGHT_SYSTEM1._XZ = "?"
FIGHT_SYSTEM1 = instance_create_depth(0,0,0,MENUAN)
FIGHT_SYSTEM1.xx = 270 + 110 +110
FIGHT_SYSTEM1._XZ = "?"
audio_play_sound(BGM_MENU,0,1)