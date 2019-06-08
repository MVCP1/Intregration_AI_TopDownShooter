extends Node2D

const INIMIGO = "inimigo"
const FILE = "user://save.data"
var deaths = 0
var level = 1
var last_enemy = "Doctor"
var num_dashs = 0
var num_shoots = 0
var exist_time = 0
var inimigos_mortos = 0
var auxiliar = 0

var music_time = 0

var gameData={
	deaths = 0,
	level = 0,
	last_enemy = "",
	num_dashs = 0,
	num_shoots = 0,
	exist_time = 0,
	inimigos_mortos = 0
	}


# Called when the node enters the scene tree for the first time.
func _ready():
	load_game()
	
	var i = 0
	while i < get_tree().get_root().get_child_count():
		if get_tree().get_root().get_child(i).is_in_group("lacraia"):
			var n = 0
			while n < get_tree().get_root().get_child(i).get_child_count():
				if get_tree().get_root().get_child(i).get_child(n).is_in_group("corpo"):
					get_tree().get_root().get_child(i).get_child(n).proximo_segmento = get_tree().get_root().get_child(i).get_child(n+1)
				n = n + 1
		i = i + 1
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func get_main():
	return get_tree().get_root().get_node("main")
	pass

func get_player():
	return get_tree().get_root().get_node("main").get_node("player")
	pass

func get_camera():
	var nome = "camera1"
	var valor = 1
	if get_player().has_node(nome):
		if get_player().get_node(nome).is_current():
			return get_player().get_node(nome)
		else:
			valor = valor + 1
			nome.erase(nome.length()-1, 1)
			nome = nome + String(valor)
			while not get_main().get_node(nome).is_current():
				valor = valor + 1
				nome.erase(nome.length()-1, 1)
				nome = nome + String(valor)
			return get_main().get_node(nome)
	else:
		if get_main().get_node(nome).is_current():
			return get_main().get_node(nome)
		else:
			while not get_main().get_node(nome).is_current():
				valor = valor + 1
				nome.erase(nome.length()-1, 1)
				nome = nome + String(valor)
			return get_main().get_node(nome)
	pass
	

func save_game():
	var save = File.new()
	save.open(FILE, File.WRITE)
	
	var data = gameData
	data.deaths = deaths
	data.level= level
	data.last_enemy = last_enemy
	data.num_dashs = num_dashs
	data.num_shoots = num_shoots
	data.exist_time = exist_time
	data.inimigos_mortos = inimigos_mortos
	save.store_line(to_json(data))
	save.close()
	
func load_game():
	var file = File.new()
	
	if !file.file_exists(FILE):
		save_game()
		print("File doesn't exist")
	
	else:
		var data = {}
		
		file.open(FILE, File.READ)
		
		data = parse_json(file.get_line())
		while !file.eof_reached():
			level = data["level"]
			deaths = data["deaths"]
			last_enemy = data["last_enemy"]
			num_dashs = data["num_dashs"]
			num_shoots = data["num_shoots"]
			inimigos_mortos = data["inimigos_mortos"]
			exist_time = data["exist_time"]
			
			data = parse_json(file.get_line())

				
	file.close()
	