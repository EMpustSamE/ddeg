if (_state == 0) {
    _inst_inventory = instance_create_depth((camera.x * 2 + 16 + 6 + 82 + 635), (camera.y * 2 + 16 + 6 + 8), 0, text_typer);
    _inst_inventory.text = _prefix + "INVENTORY";
    _inst_box = instance_create_depth((camera.x * 2 + 16 + 6 + 426 + 635), (camera.y * 2 + 16 + 6 + 8), 0, text_typer);
    _inst_box.text = _prefix + "BOX";
    _inst_finish = instance_create_depth((camera.x * 2 + 16 + 6 + 178 + 635), (camera.y * 2 + 16 + 6 + 384), 0, text_typer);
    _inst_finish.text = _prefix + "Press [X] to finish";

    event_user(1);
}