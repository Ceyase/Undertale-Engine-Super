// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ini_Load(){
	ini_open(GAME_SAVE_NAME+"/file"+string(Flag_GetSaveSlot())+".ini")
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,asset_get_index(ini_read_string("static","room",room_get_name(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,0)))))
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.NAME,ini_read_string("static","name","Player"));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.LV,ini_read_real("static","lv",1));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.EXP,ini_read_real("static","exp",1));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX,ini_read_real("static","hp_max",20));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP,ini_read_real("static","hp",20));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM,asset_get_index(ini_read_string("item","0","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+1,asset_get_index(ini_read_string("item","1","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+2,asset_get_index(ini_read_string("item","2","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+3,asset_get_index(ini_read_string("item","3","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+4,asset_get_index(ini_read_string("item","4","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+5,asset_get_index(ini_read_string("item","5","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+6,asset_get_index(ini_read_string("item","6","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+7,asset_get_index(ini_read_string("item","7","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_WEAPON,asset_get_index(ini_read_string("item","weapon","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_ARMOR,asset_get_index(ini_read_string("item","armor","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ATK,ini_read_real("static","atk",10));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.DEF,ini_read_real("static","def",10));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.SPD,ini_read_real("static","spd",2));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.INV,ini_read_real("static","inv",10));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BATTLE_MENU_FIGHT_OBJ,asset_get_index(ini_read_string("static","battle_menu_fight_obj","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.GOLD,ini_read_real("static","gold",0));
	
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE,asset_get_index(ini_read_string("phone","0","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+1,asset_get_index(ini_read_string("phone","1","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+2,asset_get_index(ini_read_string("phone","2","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+3,asset_get_index(ini_read_string("phone","3","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+4,asset_get_index(ini_read_string("phone","4","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+5,asset_get_index(ini_read_string("phone","5","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+6,asset_get_index(ini_read_string("phone","6","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+7,asset_get_index(ini_read_string("phone","7","noone")));
	
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX,asset_get_index(ini_read_string("box","0","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+1,asset_get_index(ini_read_string("box","1","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+2,asset_get_index(ini_read_string("box","2","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+3,asset_get_index(ini_read_string("box","3","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+4,asset_get_index(ini_read_string("box","4","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+5,asset_get_index(ini_read_string("box","5","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+6,asset_get_index(ini_read_string("box","6","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+7,asset_get_index(ini_read_string("box","7","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+8,asset_get_index(ini_read_string("box","8","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+9,asset_get_index(ini_read_string("box","9","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+10,asset_get_index(ini_read_string("box","10","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+11,asset_get_index(ini_read_string("box","11","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+12,asset_get_index(ini_read_string("box","12","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+13,asset_get_index(ini_read_string("box","13","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+14,asset_get_index(ini_read_string("box","14","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+15,asset_get_index(ini_read_string("box","15","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+16,asset_get_index(ini_read_string("box","16","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+17,asset_get_index(ini_read_string("box","17","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+18,asset_get_index(ini_read_string("box","18","noone")));
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+19,asset_get_index(ini_read_string("box","19","noone")));
	ini_close()
}