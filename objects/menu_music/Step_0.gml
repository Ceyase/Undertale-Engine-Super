if (start == 0)
{
    y1 -= 0.4
    if (y1 == -40)
        start = 1
}
if (start == 1)
{
    y1 += 0.4
    if (y1 == -20)
        start = 0
}
if(keyboard_check_pressed(ord("1"))){
pitch = 100
song = 1
audio_stop_all()
audio_play_sound(bmg_p1,0,1)
audio_sound_pitch(bmg_p1,1)
}
if(keyboard_check_pressed(ord("2"))){
pitch = 100
song = 2
audio_stop_all()
audio_play_sound(bmg_p2,0,1)
audio_sound_pitch(bmg_p2,1)
}
if(keyboard_check_pressed(ord("3"))){
pitch = 100
song = 3
audio_stop_all()
audio_play_sound(BGM_MENU,0,1)
audio_sound_pitch(BGM_MENU,1)
}
if(keyboard_check_pressed(ord("4"))){
pitch = 100
song = 3
audio_stop_all()
audio_play_sound(BGM_MENU,0,1)
audio_sound_pitch(BGM_MENU,1)
}