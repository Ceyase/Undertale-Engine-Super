///@arg y
///@arg size
///@arg dir
///@arg spd
///@arg mode
///@arg destroy
function MakeBoneLeft() {
	var yy = argument[0];
	var size = argument[1];
	var dir = argument[2];
	var spd = argument[3];
	var mode = argument[4];
	var ds = argument[5];

	MakeBoneH(battle_board.x-battle_board.left-3,yy,size,dir,spd,mode,0,ds)


}
