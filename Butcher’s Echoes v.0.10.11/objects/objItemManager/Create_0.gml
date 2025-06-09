depth = -9999;

text_inventory = Font_Menu;
menu_abierto = false;
inventory_visible = false;

// En el Create de objItemManager
global.items_collected = ds_map_create();

//crear items
global.item_list = 
	{	

	libro : new create_item(
	"Libro",
	"Las voces del libro te susurran",
	spr_book_icon,
	
	function()
		{
		
		}
	),
		

	key1 : new create_item(
	"Llave Comedor",
	"Disfrutad del banquete, abre la entrada al comedor inaccesible",
	spr_key1_icon,
	
	function()
		{
		
		var _used= false;
			
		if instance_exists(objDoorLock1)
			{
				
			with(objDoorLock1)
				{
				if distance_to_object(objPlayer) < 4 
					{
					sprite_index = spr_door1_open;
                    mask_index = spr_door1_open;
					locked = false;
					_used = true;
					play_sfx("snd_door1");
					};
				}
			}
		
		// ...
		if _used == true
			{
			array_delete(inv,selected_item,1);
			}
			return _used;
		}	
	),
	
	
	needle1 : new create_item(
	    "Aguja pequeña",
	    "Una pequeña aguja que sirve para marcar la hora, ¿dónde puede ir?",
	    spr_needle1_icon,

	    function() {
	        var _used = false;

	        if (instance_exists(objClockBox)) {
	            with (objClockBox) {
	                if (distance_to_object(objPlayer) < 4) {
	                    sprite_index = spr_reloj2;
	                    clock_state = 1;
	                    mensaje = ["Ya tiene puesta la hora, falta alguna pieza más, parece incompleto..."];
	                    _used = true;
	                }
	            }
	        }

	        if (_used == true) {
	            array_delete(inv, selected_item, 1);
	        }
	        return _used;
	    }
	),

	
	key2 : new create_item(
	"Llave Caja",
	"Una llave para algun mecanismo de seguridad, ¡la caja fuerte!..",
	spr_key2_icon,
	
	function()
		{
		
		var _used= false;
			
		if instance_exists(objBoxLock)
			{
				
			with(objBoxLock)
				{
				if distance_to_object(objPlayer) < 4 
					{
					item_add(global.item_list.key3)
					sprite_index = spr_boxunlock;
                    mask_index = spr_boxunlock;
					locked = false;
					_used = true;
					play_sfx("item1");
					};
				}
			}
		
		// ...
		if _used == true
			{
			array_delete(inv,selected_item,1);
			}
			return _used;
		}	
	),
	
	key3 : new create_item(
	"Llave de la sirvienta",
	"Esta es la llave con la que se podrá abrir aquella habitacion.",
	spr_key3_icon,
	
	function()
		{
		
		var _used= false;
			
		if instance_exists(objDoorLock1)
			{
				
			with(objDoorLock1)
				{
				if distance_to_object(objPlayer) < 4 
					{
					sprite_index = spr_door1_open;
                    mask_index = spr_door1_open;
					locked = false;
					_used = true;
					play_sfx("snd_door1");
					};
				}
			}
		
		// ...
		if _used == true
			{
			array_delete(inv,selected_item,1);
			}
			return _used;
		}	
	),
	
	needle2 : new create_item(
    "Aguja grande",
    "La aguja grande que faltaba, sirve para marcar la hora",
    spr_needle2_icon,

    function()
    {
        var _used = false;

        if (instance_exists(objClockBox))
        {
            with (objClockBox)
            {
                if (distance_to_object(objPlayer) < 4 && clock_state == 1)
                {
                    sprite_index = spr_reloj3;
                    clock_state = 2;
                    mensaje = ["Ahora parece estar completo. Podría abrir su cajon con alguna llave o algo..."];
                    _used = true;
                }
            }
        }

        if (_used)
        {
            array_delete(inv, selected_item, 1);
        }

        return _used;
    }
),

	
	key4 : new create_item(
    "Llave del reloj",
    "Para abrir el cajón del reloj activado.",
    spr_key3_icon,

    function()
    {
        var _used = false;

        if (instance_exists(objClockBox))
        {
            with (objClockBox)
            {
                if (distance_to_object(objPlayer) < 4 && clock_state == 2)
                {
                    item_add(global.item_list.hammer)
					sprite_index = spr_reloj4;
                    mask_index = spr_reloj4;
                    locked = false;
                    _used = true;
                    play_sfx("item1");
                }
            }
        }

        if (_used)
        {
            array_delete(inv, selected_item, 1);
        }

        return _used;
    }
	),

	
	hammer : new create_item(
	"Martillo", 
	"Un martillo robusto, con esto puedo tirar el tablon y salir...",
	spr_hammer_icon,
	
	function() {
		var _used= false;
			
		if instance_exists(objTableLock)
			{
				
			with(objTableLock)
				{
				if distance_to_object(objPlayer) < 4 
					{
					instance_destroy();
					_used= true;
					};
				}
			}
		
		//...
		if _used == true
			{
			array_delete(inv,selected_item,1);
			}
			return _used;
		}
	
	),	
	
	}
	
//crear inventario	
inv = array_create(0);

selected_item = -1
		
//Posiciones
sep = 20;
screen_bord = 16;