if (combat_state == "enemigo") {
    var damage;
    
    // Si el jugador s'està defensant, rep menys mal
    if (is_defending) {
        damage = irandom_range(1, 4); // Dany reduït
    } else {
        damage = irandom_range(5, 10); // Dany normal
    }

    jugador_hp -= damage;
    global.jugador_hp = jugador_hp;

    is_defending = false;

    // GameOver
    if (jugador_hp <= 0) {
        global.jugador_hp = 0;
        room_goto(RoomGameOver);
        exit;
    }

    combat_state = "jugador"; // Torn del jugador
}
