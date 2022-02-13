/// @description Insert description here
// You can write your code in this editor
camera.x= choose(-1, 1) * intensity/4
camera.y= choose(1, -1) * intensity/4
//BLUR_SHADER.var_blur_amount = intensity/2
intensity-=1
if(intensity = 0){
	instance_destroy();
	camera.x = 0;
	camera.y = 0;
}