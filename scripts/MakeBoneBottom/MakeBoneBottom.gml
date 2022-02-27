///@arg x
///@arg size
///@arg dir
///@arg spd
///@arg mode
///@arg destroy
function MakeBoneBottom() {
	var xx = argument[0];
	var size = argument[1];
	var dir = argument[2]
	var spd = argument[3];
	var mode = argument[4];
	var ds = argument[5];

	var a = MakeBoneV(xx,battle_board.y+battle_board.down-11-size,size,dir,spd,mode,0,ds)
	return a

}
