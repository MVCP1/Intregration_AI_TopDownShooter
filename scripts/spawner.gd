extends Node2D

export var vet_x = Vector2(0, 1024)
export var vet_y = Vector2(0, 600)
export var ativado = true
export var intervalo = 2
var tempo = intervalo
var pre_antony = preload("res://scenes/antony.tscn")
export var antony = true
export var antony_n = 1
var pre_monica = preload("res://scenes/monica.tscn")
export var monica = true
export var monica_n = 1
var pre_larissa = preload("res://scenes/larissa.tscn")
export var larissa = true
var pre_margaret = preload("res://scenes/margaret.tscn")
export var margaret = true
var pre_bebel = preload("res://scenes/bebel.tscn")
export var bebel = true
export var bebel_n = 1
var pre_barbara = preload("res://scenes/barbara.tscn")
export var barbara = true
var pre_greg = preload("res://scenes/greg.tscn")
export var greg = true
export var greg_n = 1
var pre_beto = preload("res://scenes/beto.tscn")
export var beto = true
var lista_inimigos = []
var pre_vagner = preload("res://scenes/vagner.tscn")
export var vagner = true
export var vagner_n = 1
#pre_barbara, pre_antony, pre_monica, pre_larissa, pre_margaret, pre_bebel, pre_greg, pre_beto
var spawn_pos = Vector2()
var rand_n

# Called when the node enters the scene tree for the first time.
func _ready():
	if antony:
		while antony_n > 0:
			lista_inimigos.append(pre_antony)
			antony_n = antony_n - 1
	if monica:
		while monica_n > 0:
			lista_inimigos.append(pre_monica)
			monica_n = monica_n - 1
	if larissa:
		lista_inimigos.append(pre_larissa)
	if margaret:
		lista_inimigos.append(pre_margaret)
	if bebel:
		while bebel_n > 0:
			lista_inimigos.append(pre_bebel)
			bebel_n = bebel_n - 1
	if barbara:
		lista_inimigos.append(pre_barbara)
	if greg:
		while greg_n > 0:
			lista_inimigos.append(pre_greg)
			greg_n = greg_n - 1
	if beto:
		lista_inimigos.append(pre_beto)
	if vagner:
		while vagner_n > 0:
			lista_inimigos.append(pre_vagner)
			vagner_n = vagner_n - 1
	randomize()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ativado:
		rand_n = rand_range(0, 4)
		if tempo <= 0:
			var inimigo = lista_inimigos[randi()%lista_inimigos.size()].instance()
			if rand_n < 1:
				spawn_pos = Vector2(rand_range(vet_x.x, vet_x.y), vet_y.x+50)
			elif rand_n < 2:
				spawn_pos = Vector2(rand_range(vet_x.x, vet_x.y), vet_y.y-50)
			elif rand_n < 3:
				spawn_pos = Vector2(vet_x.x+50, rand_range(vet_y.x, vet_y.y))
			elif rand_n <= 4:
				spawn_pos = Vector2(vet_x.y-50, rand_range(vet_y.x, vet_y.y))
			inimigo.set_position(spawn_pos)
			game.get_main().add_child(inimigo)
			tempo = intervalo
			pass
		else:
			tempo = tempo - delta
	pass

