depth = -9999;

text_inventory = Font_Menu;
menu_abierto = false;
inventory_visible = false;

// En el Create de objItemManager
global.items_collected = ds_map_create();

// Constructor items - configura la creacion de items
function create_item(_name, _desc, _spr, _effect) constructor
	{
	name = _name;
	descripcion = _desc;
	sprite = _spr;
	effect = _effect;
	}


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
	"Disfrutad del banquete, abre la entrada al gran comedor",
	spr_key1_icon,
	
	function()
		{
		
		var _used= false;
			
		if instance_exists(objDoor1Lock)
			{
				
			with(objDoor1Lock)
				{
				if distance_to_object(objPlayer) < 4 
					{
					instance_destroy();
					_used= true;
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
	"Una pequeña aguja que sirve para marcar la hora, donde puede ir?",
	spr_needle1_icon,
	
	function()
		{
		
		var _used= false;
			
		if instance_exists(objDoor1Lock)
			{
				
			with(objDoor1Lock)
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
	
	needle2 : new create_item(
	"Aguja grande",
	"La aguja grande que faltaba, sirve para marcar la hora",
	spr_needle2_icon,
	
	function()
		{
		
		var _used= false;
			
		if instance_exists(objDoor1Lock)
			{
				
			with(objDoor1Lock)
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
	
	
	hammer : new create_item(
	"Martillo", 
	"Un martillo robusto, con esto puedo tirar el tablon y salir...",
	spr_hammer_icon,
	
	function()
		{
		
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