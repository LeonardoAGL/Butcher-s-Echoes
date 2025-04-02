draw_set_font(global.font);
draw_sprite( book.sprite, 0, camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 16)
draw_text( camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 32, book.name );
