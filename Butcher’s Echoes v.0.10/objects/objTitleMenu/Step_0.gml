if (image_index < image_number - 1) {
    image_index += anim_speed;
    
    // Per si s'excedeix una mica pel decimal
    if (image_index > image_number - 1) {
        image_index = image_number - 1;
    }
}
