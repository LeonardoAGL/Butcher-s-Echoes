// Crear la llista d'inventari des del moment 0 del joc
if (!variable_global_exists("inventory")) {
    global.inventory = ds_list_create();
}
