if (Battle_GetState() == (3 << 0) && instance_exists(battle_soul))
{
    with (battle_soul)
    {
        if moveable
        {
            if ((battle_board.angle % 360) == 0)
            {
                if (x > ((battle_board.x + battle_board.right) - (sprite_width / 2)))
                    x = ((battle_board.x + battle_board.right) - (sprite_width / 2))
                else if (x < ((battle_board.x - battle_board.left) + (sprite_width / 2)))
                    x = ((battle_board.x - battle_board.left) + (sprite_width / 2))
                else if (y > ((battle_board.y + battle_board.down) - (sprite_height / 2)))
                    y = ((battle_board.y + battle_board.down) - (sprite_height / 2))
                else if (y < ((battle_board.y - battle_board.up) + (sprite_height / 2)))
                    y = ((battle_board.y - battle_board.up) + (sprite_height / 2))
            }
        }
    }
}
