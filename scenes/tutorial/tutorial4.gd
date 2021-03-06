extends Node2D

var entrou = false
var vel = 200
var vel2 = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("musica").play(game.music_time)
	if game.auxiliar == 2:
		game.get_player().dashar = true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if entrou:
		get_node("morte").set_global_position(get_node("morte").get_global_position() + Vector2(vel, 0) * delta)
		get_node("morte2").set_global_position(get_node("morte2").get_global_position() + Vector2(0, vel2) * delta)
		get_node("morte3").set_global_position(get_node("morte3").get_global_position() + Vector2(0, -vel2) * delta)
		
	#REPETIR FASE SE MORRER
	if game.get_player().vida < game.get_player().vida_max:

		if game.auxiliar == 0:
			game.auxiliar = 1
			dict_dialog.key = "tutorial4.1"
			get_tree().change_scene("res://scenes/tutorial/litle_deaths.tscn")
		elif game.auxiliar == 1:
			game.auxiliar = 2
			dict_dialog.tutorial_scene = 3
			get_tree().change_scene("res://scenes/tutorial/death_tutorial.tscn")
		else:
			dict_dialog.key = "tutorial4.2"
			get_tree().change_scene("res://scenes/tutorial/litle_deaths.tscn")
	
	pass


func _on_ativador_body_entered(body):
	if body == game.get_player():
		entrou = true
	pass # Replace with function body.
