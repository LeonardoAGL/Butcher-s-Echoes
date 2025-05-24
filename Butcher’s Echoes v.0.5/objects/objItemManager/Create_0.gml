depth = -9999;

global.font = Font_Menu;


menu_abierto = false;
inventory_visible = false;


//constructor items - configura la creacion de items
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
			
		if instance_exists(objPuertaBloq)
			{
				
			with(objPuertaBloq)
				{
				if distance_to_object(Object1) < 4 
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
	
	
	
	
	explosivos : new create_item(
	"Explosivo", 
	"Un pequeño explosivo...pero eficaz",
	spr_explosives_icon,
	
	function()
		{
		
		var _used= false;
			
		if instance_exists(objTableBloq)
			{
				
			with(objTableBloq)
				{
				if distance_to_object(Object1) < 4 
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