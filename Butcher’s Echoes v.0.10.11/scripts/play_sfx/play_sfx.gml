function play_sfx() {
    var nom = argument0; // o simplement usa 'nombre' directament

    if (ds_map_exists(global.sfx, nom)) {
		var so = global.sfx[? nom];
		audio_sound_gain(so, global.volumen_sfx, 0);
		audio_play_sound(so, 0, false);

    }
}
