// Coordenades de la càmera
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Crear la surface si no existeix
if (!surface_exists(surf_darkness)) {
    surf_darkness = surface_create(cam_w, cam_h);
}

// Pintar la surface
surface_set_target(surf_darkness);
draw_clear_alpha(c_black, 0);

// Fons fosc suau
//draw_set_alpha(0.8);
//draw_set_color(c_black);
//draw_rectangle(0, 0, cam_w, cam_h, false);
//draw_set_alpha(1);

// Llum al voltant del jugador
shader_set(shd_light);
var light_x = objPlayer.x - cam_x;
var light_y = objPlayer.y - cam_y;
shader_set_uniform_f(u_pos, light_x, light_y);
draw_rectangle(0, 0, cam_w, cam_h, false);
shader_reset();

surface_reset_target();

// Dibuixar la surface a la pantalla
draw_surface(surf_darkness, cam_x, cam_y);

