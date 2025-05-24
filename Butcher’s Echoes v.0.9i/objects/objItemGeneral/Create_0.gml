item = global.item_list.libro;
if (!variable_instance_exists(id, "visual_sprite")) {
    visual_sprite = item.sprite;
}

if (variable_instance_exists(self, "unique_id")) {
    if (variable_global_exists("items_collected")) {
        if (ds_map_exists(global.items_collected, unique_id)) {
            instance_destroy();
        }
    }
}