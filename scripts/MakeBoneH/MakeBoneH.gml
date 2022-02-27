///@arg x
///@arg y
///@arg size
///@arg dir
///@arg speed
///@arg mode
///@arg out
///@arg destroy
function MakeBoneH() {
	var xx = argument[0];
	var yy = argument[1];
	var size = argument[2];
	var dir = argument[3];
	var spd = argument[4];
	var mode = argument[5];
	var out = argument[6];
	var ds = argument[7];

	a = instance_create_depth(xx,yy,0,battle_bone_h)
	a.size = size
	a.direction = dir
	a.speed = spd
	a.mode = mode
	a.out = out
	a.destroy = ds
	return a


}
