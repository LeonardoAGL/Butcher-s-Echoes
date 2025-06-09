global.vol_musica = 1;
global.vol_sfx = 1;

if (instance_number(objMusicManager) > 1) {
    instance_destroy(); // elimina duplicados
}

// Ejemplo de reproducir música del menú
audio_stop_all(); // para evitar mezclas