if (mb == 1)
{
    if (mini == 0)
    {
        if (mouse_x >= 230 && xx >= -325)
            xx -= (abs((mouse_x - 160)) / 40)
        else if (mouse_x <= 50 && xx <= 0)
            xx += (abs((mouse_x - 160)) / 40)
        else if (xx > 400)
            xx = 400
        else if (xx < -1000)
            xx = -1000
    }
    else if (mini == 1)
    {
        if (mouse_x >= 520 && (!xx <= 800))
            xx -= (abs((mouse_x - 320)) / 40)
        else if (mouse_x <= 120 && (!xx >= 1600))
            xx += (abs((mouse_x - 320)) / 40)
        else if (xx > 1600)
            xx = 1600
        else if (xx < 100)
            xx = 100
    }
}
//与
if(keyboard_check(ord("0"))&&keyboard_check(ord("W")))Encounter_Start(0)
if(keyboard_check(ord("1"))&&keyboard_check(ord("W")))Encounter_Start(1)
if(keyboard_check(ord("2"))&&keyboard_check(ord("W")))Encounter_Start(2)


