var STATE = Battle_GetState()
var MENU = Battle_GetMenu()
if ((STATE == 3) || ((STATE == 2) || ((STATE == 0) && ((MENU != 2) && ((MENU != 3) && (MENU != 4))))))
    draw_self()
