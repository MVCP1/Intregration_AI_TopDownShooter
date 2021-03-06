extends Control

var scene_path_to_load
var data = []

# Called when the node enters the scene tree for the first time.
func _ready():
	if game.deaths == 0 and game.max_level == 0:
		$Menu/CenterRow/Buttons/ContinueButton.scene_to_load = "res://title_screen/TitleScreen.tscn"
	else:
		$Menu/CenterRow/Buttons/ContinueButton.scene_to_load = "res://game/Continue.tscn"
		
	$musica.play(game.music_time)
	game.load_game()
		
	$Menu/VersionLabel.set_text('Version ' + str(game.max_level) + '.' + str(game.deaths) +
								'\nManel e Marrocos Studio')
	$Menu/CenterRow/Buttons/ContinueButton.grab_focus()
	
	for button in $Menu/CenterRow/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
		

func _on_Button_pressed(scene_to_load):

	scene_path_to_load = scene_to_load	
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_FadeIn_fade_finished():
	$FadeIn.hide()
	game.music_time = $musica.get_playback_position()
	get_tree().change_scene(scene_path_to_load)


func _on_ContinueButton_mouse_entered():
	$Menu/CenterRow/Buttons/ContinueButton.grab_focus()
func _on_NewGameButton_mouse_entered():
	$Menu/CenterRow/Buttons/NewGameButton.grab_focus()
func _on_InfiniteButton_mouse_entered():
	$Menu/CenterRow/Buttons/InfiniteButton.grab_focus()
func _on_OptionsButton_mouse_entered():
	$Menu/CenterRow/Buttons/OptionsButton.grab_focus()
func _on_QuitButton_mouse_entered():
	$Menu/CenterRow/Buttons/QuitButton.grab_focus()
