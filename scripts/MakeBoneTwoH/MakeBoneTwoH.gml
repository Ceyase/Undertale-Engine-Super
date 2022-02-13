///@arg x
///@arg y
///@arg speed
///@arg gap
///@arg destroy
function MakeBoneTwoH() {
	var xx = argument[0];
	var yy = argument[1];
	var spd = argument[2];
	var gap = argument[3];
	var ds = argument[4];

	MakeBoneLeft(yy,xx-battle_board.x+battle_board.left-gap+2,-90,spd,0,ds)
	MakeBoneRight(yy,battle_board.x+battle_board.right-gap-xx+2,-90,spd,0,ds)


}
