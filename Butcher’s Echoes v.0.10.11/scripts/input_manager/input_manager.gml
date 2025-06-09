/// Definicio dels inputs

//Jugador
function input_left() {
    return keyboard_check(vk_left) || keyboard_check(ord("A"));
}

function input_right() {
    return keyboard_check(vk_right) || keyboard_check(ord("D"));
}

function input_up() {
    return keyboard_check(vk_up) || keyboard_check(ord("W"));
}

function input_down() {
    return keyboard_check(vk_down) || keyboard_check(ord("S"));
}

//Menu
function input_left_menu() {
    return keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
}

function input_right_menu() {
    return keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
}

function input_up_menu() {
    return keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
}

function input_down_menu() {
    return keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
}

function input_accept() {
    return keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
}

function input_cancel() {
    return keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_backspace);
}

function input_inventory() {
    return keyboard_check_pressed(ord("C")) || keyboard_check_pressed(vk_rshift);
}
