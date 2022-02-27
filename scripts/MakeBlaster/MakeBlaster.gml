///@arg x
///@arg y
///@arg idealx
///@arg idealy
///@arg idealrot
///@arg pause
///@arg xscale
///@arg yscale
function MakeBlaster() {
	var xx = argument[0];
	var yy = argument[1];
	var idealxx = argument[2];
	var idealyy = argument[3];
	var idealrott = argument[4];
	var pp = argument[5];
	var xscale = argument[6];
	var yscale = argument[7];

	bb = instance_create_depth(xx,yy,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,battle_blaster)
	bb.idealx = idealxx
	bb.idealy = idealyy
	bb.idealrot = idealrott
	bb.pause = pp
	bb.image_xscale = xscale
	bb.image_yscale = yscale
	return bb


}
