if (_menu == 1) {
    _destroy_time[0] = 0
    if (!instance_exists(_inst_item)) {
        _inst_item = instance_create_depth((188 + 6 + 38) + camera.x, (52 + 6 + 22) + camera.y, 0, text_typer);
        _inst_item.text = _prefix + "{scale 2}{shadow true}{color `white`}{surface " + string(real(_surface)) + "}";

        var proc = 0;
        repeat(Item_GetNumber()) {
            _inst_item.text += Item_GetName(Item_Get(proc)) + "&";
            proc += 1;
        }
    }
    if (!instance_exists(_inst_item_use)) {
        _inst_item_use = instance_create_depth((188 + 6 + 38) + camera.x, (52 + 6 + 302) + camera.y, 0, text_typer);
        _inst_item_use.text = _prefix + "{scale 2}{surface " + string(real(_surface)) + "}" + "USE";
    }
    if (!instance_exists(_inst_item_info)) {
        _inst_item_info = instance_create_depth((188 + 6 + 134) + camera.x, (52 + 6 + 302) + camera.y, 0, text_typer);
        _inst_item_info.text = _prefix + "{scale 2}{surface " + string(real(_surface)) + "}" + "INFO";
    }
    if (!instance_exists(_inst_item_drop)) {
        _inst_item_drop = instance_create_depth((188 + 6 + 248) + camera.x, (52 + 6 + 302) + camera.y, 0, text_typer);
        _inst_item_drop.text = _prefix + "{scale 2}{surface " + string(real(_surface)) + "}" + "DROP";
    }
} else {
    if (_menu != 2) {
        Anim_Create(_destroy_time, "0", 0, 0, _destroy_time[0], 20 - _destroy_time[0], 20 - _destroy_time[0]) if (instance_exists(_inst_item) && _destroy_time[0] > 0) {
            instance_destroy(_inst_item);
        }
        if (instance_exists(_inst_item_use) && _destroy_time[0] > 0) {
            instance_destroy(_inst_item_use);
        }
        if (instance_exists(_inst_item_info) && _destroy_time[0] > 0) {
            instance_destroy(_inst_item_info);
        }
        if (instance_exists(_inst_item_drop) && _destroy_time[0] > 0) {
            instance_destroy(_inst_item_drop);
        }
    }
}

if (_menu == 3) {
    _destroy_time[1] = 0
    if (!instance_exists(_inst_stat_0)) {
        _inst_stat_0 = instance_create_depth((188 + 6 + 22) + camera.x, (52 + 6 + 26) + camera.y, 0, text_typer);
        var name = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.NAME);
        var lv = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.LV);
        var hp = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.HP);
        var hp_max = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.HP_MAX);
        var atk = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.ATK);
        var atk_item = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.ATK_ITEM);
        var def = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.DEF);
        var def_item = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.DEF_ITEM);
        var weapon = Item_GetName(Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.ITEM_WEAPON));
        var armor = Item_GetName(Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.ITEM_ARMOR));
        var gold = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.GOLD);
        _inst_stat_0.text = _prefix + "{scale 2}{surface " + string(real(_surface)) + "}" + "{define `NAME` `" + name + "`}{define `LV` " + string(lv) + "}{define `HP` " + string(hp) + "}{define `HP_MAX` " + string(hp_max) + "}{define `ATK` " + string(atk) + "}{define `ATK_ITEM` " + string(atk_item) + "}{define `DEF` " + string(def) + "}{define `DEF_ITEM` " + string(def_item) + "}{define `WEAPON` `" + weapon + "`}{define `ARMOR` `" + armor + "`}{define `GOLD` " + string(gold) + "}" + "\"{insert NAME}\"{space_y -1}&&{space_y 0}LV  {insert LV}&HP  {insert HP} / {insert HP_MAX}&&AT  {insert ATK} ({insert ATK_ITEM})&DF  {insert DEF} ({insert DEF_ITEM}){space_y -1}&&{space_y 0}WEAPON: {insert WEAPON}&ARMOR: {insert ARMOR}{space_y 4}&{space_y 0}GOLD: {insert GOLD}";
    }
    if (!instance_exists(_inst_stat_1)) {
        _inst_stat_1 = instance_create_depth((188 + 6 + 190) + camera.x, (52 + 6 + 182) + camera.y, 0, text_typer);
        var xp = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.EXP);
        var lv = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.LV);
        var lv_xp = Player_GetLvExp(lv + 1);
        var kills = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.KILLS);
        _inst_stat_1.text = _prefix + "{scale 2}{surface " + string(real(_surface)) + "}" + "{define `EXP` " + string(xp) + "}{define `EXP_NEXT` " + (lv_xp != -1 ? string(lv_xp - xp) : "`N/A`") + "}" + "EXP: {insert EXP}&NEXT: {insert EXP_NEXT}" + (kills > 0 ? "{define `KILLS` " + string(kills) + "}" + "{space_y -1}&&{space_y 0}&{space_y 4}&{space_y 0}KILLS: {insert KILLS}": "");
    }
} else {
    Anim_Create(_destroy_time, "1", 0, 0, _destroy_time[1], 20 - _destroy_time[1], 20 - _destroy_time[1]) if (instance_exists(_inst_stat_0) && _destroy_time[1] > 0) {
        instance_destroy(_inst_stat_0);
    }
    if (instance_exists(_inst_stat_1) && _destroy_time[1] > 0) {
        instance_destroy(_inst_stat_1);
    }
}

if (_menu == 4) {
    _destroy_time[2] = 0
    if (!instance_exists(_inst_phone)) {
        _inst_phone = instance_create_depth((188 + 6 + 38) + camera.x, (52 + 6 + 22) + camera.y, 0, text_typer);
        _inst_phone.text = _prefix + "{scale 2}{surface " + string(real(_surface)) + "}";

        var proc = 0;
        repeat(Phone_GetNumber()) {
            _inst_phone.text += Phone_GetName(Phone_Get(proc)) + "&";
            proc += 1;
        }
    }
} else {
    Anim_Create(_destroy_time, "2", 0, 0, _destroy_time[2], 20 - _destroy_time[2], 20 - _destroy_time[2]) if (instance_exists(_inst_phone) && _destroy_time[2] > 0) {
        instance_destroy(_inst_phone);
    }
}