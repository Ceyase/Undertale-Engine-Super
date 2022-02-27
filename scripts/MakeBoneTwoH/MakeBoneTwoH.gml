///@arg x
///@arg y
///@arg speed
///@arg gap
///@arg destroy
///@arg mod
function MakeBoneTwoH() {
	var xx = argument[0];
	var yy = argument[1];
	var spd = argument[2];
	var gap = argument[3];
	var ds = argument[4];
	var mode = argument[5]

	var Bone1 = MakeBoneLeft(yy,xx-battle_board.x+battle_board.left-gap+2,-90,spd,mode,ds)
	var Bone2 = MakeBoneRight(yy,battle_board.x+battle_board.right-gap-xx+2,-90,spd,mode,ds)

	return [Bone1,Bone2]
}
