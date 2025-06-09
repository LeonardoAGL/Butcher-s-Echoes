// Constructor items - configura la creacion de items
function create_item(_name, _desc, _spr, _effect) constructor
	{
	name = _name;
	descripcion = _desc;
	sprite = _spr;
	effect = _effect;
	}

//coger items
function item_add(_item)
	{
	
	array_push( objItemManager.inv, _item);
	play_sfx("snd_item1");
	
	}