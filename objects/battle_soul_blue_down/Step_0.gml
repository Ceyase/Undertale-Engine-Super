/// @description Insert description here
// You can write your code in this editor
event_inherited()

var SPD;
if(Input_Check(INPUT.CANCEL) = 1){
	SPD = 1;
}
else{
	SPD = 2;
}
var _temp_local_var_1,_temp_local_var_2,_temp_local_var_3,_temp_local_var_4
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
if Input_Check(INPUT.LEFT)
{
    _temp_local_var_1 = 2.5
            if (! place_meeting((x - 2), y, block))
                x -= SPD;
            _temp_local_var_1 = (_temp_local_var_1 - 1)
}
if Input_Check(INPUT.RIGHT)
{
    _temp_local_var_2 = 2.5
            if (! place_meeting((x + 2), y, block))
                x += SPD;
            _temp_local_var_2 = (_temp_local_var_2 - 1)
}
if place_meeting(x, (y - 1), block)
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
if place_meeting(x, (y + 1), block)||place_meeting(x, (y + 0.1), battle_plate)
{
    _move = 0
	   if Input_Check(INPUT.UP)_move = (- _speed_jump)
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
        if (! Input_Check(INPUT.UP))
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
        if (!(place_meeting(x, (y + (0.01 * sign(_move))),block)))
        {
            y = (y + (0.01 * sign(_move)))
            _temp_local_var_4 = (_temp_local_var_4 - 1)
            if (_temp_local_var_4 - 1)
                continue
        }
        break
    }
}
}