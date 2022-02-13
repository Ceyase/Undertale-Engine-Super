event_inherited()
if (hurter.light == 0)
    c_m = 0
else
    c_m = 1
if (c_m == 0)
{
    if ((Battle_GetState() == 3) && moveable)
    {
        var SPD = Player_GetSpdTotal()
        SPD = (Input_Check(5) ? (SPD / 2) : SPD)
        repeat (SPD * 10)
        {
            if Input_CheckPressed(0)
                dir = 1
            if Input_Check(1)
                dir = 2
            if Input_Check(2)
                dir = 3
            if Input_Check(3)
                dir = 4
        }
    }
}
else if ((Battle_GetState() == 3) && moveable)
{
    SPD = Player_GetSpdTotal()
    SPD = (Input_Check(5) ? (SPD / 2) : SPD)
    repeat (SPD * 10)
    {
        if Input_Check(0)
            y -= 0.1
        if Input_Check(1)
            y += 0.1
        if Input_Check(2)
            x -= 0.1
        if Input_Check(3)
            x += 0.1
    }
}
SPD = Player_GetSpdTotal()
SPD = (Input_Check(5) ? (SPD / 2) : SPD)
repeat (SPD * 10)
{
    if (dir == 1)
    {
        if (!position_meeting(x, (y - (sprite_height / 2)), block))
            y -= 0.1
    }
    if (dir == 2)
    {
        if (!position_meeting(x, (y + (sprite_height / 2)), block))
            y += 0.1
    }
    if (dir == 3)
    {
        if (!position_meeting((x - (sprite_width / 2)), y, block))
            x -= 0.1
    }
    if (dir == 4)
    {
        if (!position_meeting((x + (sprite_width / 2)), y, block))
            x += 0.1
    }
}
