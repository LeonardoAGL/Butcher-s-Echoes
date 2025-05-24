sprite_index = visual_sprite;

if (place_meeting(x, y, objPlayer)) {
    item_add(item);
    if (variable_instance_exists(self, "unique_id")) {
        ds_map_set(global.items_collected, unique_id, true);
    }

    instance_destroy();
}
