if (variable_instance_exists(self, "room_destino")) {
    global.spawn_x = x_destino;
    global.spawn_y = y_destino;
    room_goto(room_destino);
}