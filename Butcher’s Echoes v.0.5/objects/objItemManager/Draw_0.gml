if (inventory_visible) {
draw_set_font(global.font); //escojer la fuente de texto items

for (var i = 0; i < array_length(inv); i++)
	{
	var _xx = screen_bord; //valores orden y separacion para ubicar items - nombre. En Create
	var _yy = screen_bord;
	var _sep = sep;
	var _col = c_white;
	
	//icono
	draw_sprite( inv[i].sprite, 0,
	camera_get_view_x(view_camera[0]) + _xx,
	camera_get_view_y(view_camera[0]) + _yy + _sep*i)
	
	//cuando "seleccione" color
	if selected_item == i {_col = c_yellow;};
	draw_set_color(_col);
	
	//nombre
	draw_text_transformed(
    camera_get_view_x(view_camera[0]) + _xx + 20,
    camera_get_view_y(view_camera[0]) + 20 + _sep*i,
    inv[i].name,
    0.08, 0.08, 0);// xscale, yscale, angle
	
	//descripcion
	if (selected_item == i) 
	{
    draw_text_ext_transformed( //el ext añade spacing y salto de linia
        camera_get_view_x(view_camera[0]) + _xx + 16,
        camera_get_view_y(view_camera[0]) + _yy + _sep * array_length(inv),
        inv[i].descripcion,
        80, 1000, //spacing - word wrap
		0.08, 0.08, 0);
	}
		
	//devolver color a blanco
	draw_set_color(c_white);
	}
}