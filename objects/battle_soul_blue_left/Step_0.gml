/// @description Insert description here
// You can write your code in this editor
event_inherited()

var SPD;
if(Input_Check(ord("X")) = 1){
	SPD = 1;
}
else{
	SPD = 2;
}
var _temp_local_var_1,_temp_local_var_2,_temp_local_var_3,_temp_local_var_4
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
if Input_Check(vk_up)
{
    _temp_local_var_1 = 2.5
            if (! place_meeting(x, y - 2, block))
                y -= SPD;
            _temp_local_var_1 = (_temp_local_var_1 - 1)
}
if Input_Check(vk_down)
{
    _temp_local_var_2 = 2.5
            if (! place_meeting(x, y + 2, block))
                y += SPD;
            _temp_local_var_2 = (_temp_local_var_2 - 1)
}
if place_meeting(x+1, y, block)
{
	if(shake = 1){
		_move = 15;
	}
	else{
		if(_move != 0){
			_move = abs(_move)/20;
		}
		else{
			_move = _speed_jump;
		}
	}
	
}
if place_meeting(x-1,y, block)||place_meeting(x-1,y, battle_plate)
{
    _move = 0
	   if Input_Check(vk_right)_move = (- _speed_jump)
		if(shake = 1){
			instance_create_depth(0,0,0,camera_shaker);
			audio_play_sound(snd_dong,0,0);
			shake = 0;
		}
}
else
{
    if (_move < 0)
    {
        _move = (_move + _gravity_jump)
        if (! Input_Check(vk_right))
            _move = 0
    }
    else
    {
        if (_move < 0.01)
            _move = (_move + 0.0025)
        else
        {
            if (_move < _gravity_fall_max)
                _move = (_move + _gravity_fall)
            else
                _move = _gravity_fall_max
        }
    }
}
_temp_local_var_3 = (abs(_move) * 100)
_temp_local_var_4 = _temp_local_var_3
if (_temp_local_var_3 <= 0)
{
}
else
{
    while(true)
    {
        if (! place_meeting(x - (0.01 * sign(_move)), y, block))
        {
            x = (x - (0.01 * sign(_move)))
            _temp_local_var_4 = (_temp_local_var_4 - 1)
            if (_temp_local_var_4 - 1)
                continue
        }
        break
    }
}
}
else{
	_move = 0;
}