if (distance_to_object(objPlayer) < 5 && input_accept() && global.player_state == "normal") {
    var piano_box = instance_find(objPianoBox, 0);
    if (piano_box != noone) {
        piano_box.visible = true;
        global.player_state = "puzzle";
    }
}
