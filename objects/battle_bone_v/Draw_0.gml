/// @description Insert description here
// You can write your code in this editor
if(out = 0){
	depth = DEPTH_BATTLE.BULLET;
}
else{
	depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
}

var color;
if(mode = 0){
	color = c_white;
}
if(mode = 1){
	color = c_blue;
}
if(mode = 2){
	color = c_orange;
}

if(out = 0){
	surface_set_target(Battle_GetBoardSurface()){
		draw_set_color(color);
		draw_sprite_ext(spr_battle_bonepart,0,x-7,y,1,1,0,color,1)
		draw_rectangle(x-2,y+10,x+3,y+size+3,0)
		draw_sprite_ext(spr_battle_bonepart,0,x-7,y+14+size,1,-1,0,color,1)
	}surface_reset_target();
}
else{
	draw_set_color(color);
	draw_sprite_ext(spr_battle_bonepart,0,x-7,y,1,1,0,color,1)
	draw_rectangle(x-2,y+10,x+3,y+size+3,0)
	draw_sprite_ext(spr_battle_bonepart,0,x-7,y+14+size,1,-1,0,color,1)
}
if(collision_line(x-2,y+6,x-2,y+7+size,obj,0,0)||collision_line(x+3,y+6,x+3,y+7+size,obj,0,0)){
	Battle_CallSoulEventBulletCollision();
}
//draw_set_color(c_blue)
//draw_line(x-2,y+6,x-2,y+7+size)
//draw_line(x+3,y+6,x+3,y+7+size)