/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_color(box_color)
surface_set_target(Battle_GetBoardSurface());{
	if(box = 1){
		draw_rectangle(battle_board.x-battle_board.left,battle_board.y+battle_board.down-size+5,battle_board.x+battle_board.right-1,battle_board.y+battle_board.down-1,1);
	}
}surface_reset_target();