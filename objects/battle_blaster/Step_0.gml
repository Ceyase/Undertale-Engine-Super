/// @description Insert description here
// You can write your code in this editor
if(intro = 1){
	movetime += 1;
	if(x < idealx){
		x += abs((idealx - x)/6);
	}
	if(x > idealx){
		x -= abs((x - idealx)/6);
	}
	if(y < idealy){
		y += abs((idealy - y)/6);
	}
	if(y > idealy){
		y -= abs((y - idealy)/6);
	}
	if(image_angle > idealrot){
		image_angle -= abs((idealrot - image_angle)/6);
	}
	if(image_angle < idealrot){
		image_angle += abs((image_angle - idealrot)/6);
	}

	if(movetime >= 30){
		x = idealx;
		y = idealy;
		image_angle = idealrot;
		pause -= 1;
		if(pause <= 0){
			intro = 0;
			pause = 1;
			image_speed = 0.5;
		}

		movetime = 30;
	}
}
if(image_index = 3){
	mm = 1;
	a = instance_create_depth(x,y,depth,battle_beam);
	a.image_angle = image_angle;
	a.xscale = image_xscale;
	audio_play_sound(snd_blaster_beam,0,0);
	instance_create_depth(0,0,0,camera_shaker);
}
if(mm = 1){
	if(instance_exists(a)){
		a.x = x;
		a.y = y;
	}
	direction = idealrot + 90;
	btimer += 1;
	if(btimer < 10) {
		speed += 0.5;
	}
	else{
		speed += 1.5;
	}
}