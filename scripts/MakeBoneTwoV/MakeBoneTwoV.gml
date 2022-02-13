///@arg x
///@arg y
///@arg speed
///@arg gap
///@arg destroy
///@arg mod
function MakeBoneTwoV() {
	var xx = argument[0];
	var yy = argument[1];
	var spd = argument[2];
	var gap = argument[3];
	var ds = argument[4];
	var mods = argument[5];

	MakeBoneTop(xx,yy-battle_board.y+battle_board.up-2-gap,0,spd,mods,ds)
	MakeBoneBottom(xx,battle_board.y+battle_board.down-2-gap-yy,0,spd,mods,ds)


}
