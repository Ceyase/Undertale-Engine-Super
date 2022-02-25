/// @description Insert description here
// You can write your code in this editor
if(lock = 1){
	if(arm = 0){
		legsy = battle_board.y - battle_board.up - 15;
		bodyy = battle_board.y - battle_board.up - 101;
		heady = battle_board.y - battle_board.up - 101;
		
		legs.ystart = battle_board.y - battle_board.up - 15;
		body.ystart = battle_board.y - battle_board.up - 101;
		head.ystart = battle_board.y - battle_board.up - 101;
	}
}
if(mode = 0){
	animsin += sinn;
	head.x = headx + cos(animsin / 3);
	head.y = heady + sin(animsin / 1.5);

	body.x = bodyx + cos(animsin / 3);
	body.y = bodyy + sin(animsin / 1.5)/1.5;
	
	legs.x = legsx;
	legs.y = legsy;
}
if(mode = 1){
	animsin += sinn;
	head.y = heady - sin(animsin / 6)*2;

	body.y = bodyy - sin(animsin / 6+0.25)*2;
	
	legs.x = legsx;
	legs.y = legsy;
}
if(mode = 2){
	head.x = headx;
	head.y = heady;

	body.x = bodyx;
	body.y = bodyy;
	
	legs.x = legsx;
	legs.y = legsy;
}

if(arm = 1){
	if(pause > 0)pause -= 1;
	head.y = body.y;
	body.image_speed = 0.2;
	sinn = 0;
	army += 0.2;
	if(army = 1)bodyy -= 4;
	if(army = 1.8)bodyy += 6;
	if(army = 2.8)bodyy += 2;
	if(army = 4)if(pause <= 0)bodyy -= 4;
	if(army >= 5){
		if(pause <= 0){
			bodyy = body.ystart;
			sinn = 0.25;
			arm = 0;
			army = 0;
			body.image_speed = 0;
			body.sprite_index = spr_battle_enemy_body;
			pause = 0;
		}
	}
}

if(arm = 2){
	if(pause > 0)pause -= 1;
	head.y = body.y;
	body.image_speed = 0.2;
	sinn = 0;
	army += 0.2;
	if(army = 1)bodyy += 2;
	if(army = 1.8)bodyy -= 4;
	if(army = 2.8)bodyy -= 2;
	if(army = 4)bodyy += 4;
	if(army >= 5){
		if(pause <= 0){
			bodyy = body.ystart;
			sinn = 0.25;
			arm = 0;
			army = 0;
			body.image_speed = 0;
			body.sprite_index = spr_battle_enemy_body;
			pause = 0;
		}
	}
}

if(arm = 3){
	if(pause > 0)pause -= 1;
	head.x = body.x;
	body.image_speed = 0.2;
	sinn = 0;
	armx += 0.2;
	if(armx = 1)bodyx -= 2;
	if(armx = 1.8)bodyx -= 2;
	if(armx = 2.8)bodyx += 10;
	if(armx = 4)if(pause <= 0)bodyx -= 2;
	if(armx >= 5){
		if(pause <= 0){
		bodyx = body.xstart;
		sinn = 0.25;
		arm = 0;
		armx = 0;
		body.image_speed = 0;
		body.sprite_index = spr_battle_enemy_body;
		pause = 0;
		}
	}
}

if(arm = 4){
	if(pause > 0)pause -= 1;
	head.x = body.x;
	body.image_speed = 0.2;
	sinn = 0;
	armx += 0.2;
	if(armx = 1)bodyx += 4;
	if(armx = 1.8)bodyx -= 6;
	if(armx = 2.8)bodyx -= 4;
	if(armx = 4)if(pause <= 0)bodyx += 6;
	if(armx >= 5){
		if(pause <= 0){
			bodyx = body.xstart;
			sinn = 0.25;
			arm = 0;
			armx = 0;
			body.image_speed = 0;
			body.sprite_index = spr_battle_enemy_body;
			pause = 0;
		}
	}
}