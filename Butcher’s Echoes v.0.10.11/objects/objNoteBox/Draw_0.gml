if (visible) {
    // Camara mida
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    var cam_w = camera_get_view_width(view_camera[0]);
    var cam_h = camera_get_view_height(view_camera[0]);

    // Calcular centre de la càmera
    var center_x = cam_x + cam_w / 2;
    var center_y = cam_y + cam_h / 2;

    // Configurar font i color
    draw_set_font(font_nota);
    draw_set_color(c_white);

    // Dibuixar sprite centrat
    draw_sprite(sprite_nota, 0, center_x - sprite_width / 2, center_y - sprite_height / 2);

    // Dibuixar text sobre la nota, amb escala reduïda
    draw_text_ext_transformed(
        center_x - 75, // una mica a l'esquerra per ajustar
        center_y - 80,  // una mica amunt per ajustar
        texto,          // variable amb el contingut
        40, 420,        // ample i separació línies
        0.35, 0.35,     // escala
        0               // rotació
    );
}
