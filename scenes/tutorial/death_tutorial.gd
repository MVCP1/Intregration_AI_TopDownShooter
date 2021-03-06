extends Control

var dictionary = dict_dialog.tutorial
var page = dict_dialog.id
var voice = AudioStreamPlayer.new()
var life = AudioStreamPlayer.new()
var character = 0

func _ready():
	page = dict_dialog.id
	self.add_child(voice)
	voice.stream = load("res://samples/bunch_of_voices.ogg")
	voice.play(rand_range(0.0, 8.86))
	voice.set_volume_db(-6)
	
	self.add_child(life)
	life.stream = load("res://samples/musicas/CORACAO.wav")
	
	$Game_Player/Options/Button1.grab_focus()

func _process(delta):
	if character == 0:  # Professor
		if voice.get_playback_position() > 8.86:
			voice.play(rand_range(0.0, 8.86))
			
	if character == 1:  # IA
		if voice.get_playback_position() > 18.86:
			voice.play(15.50)
			
	if character == 2:  # Neeko
		if voice.get_playback_position() > 9.86:
			voice.play(5.80)
		
	if Input.is_action_pressed("direita") and ($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		$Game_Player/Options/Button2.grab_focus()
	if Input.is_action_pressed("esquerda") and ($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		$Game_Player/Options/Button1.grab_focus()


func _on_Terminal_ready():
	$Game_Player/Dialog/Terminal.set_bbcode(dictionary[page]["text"])
	$Game_Player/Dialog/Terminal.set_visible_characters(0)


func _on_Timer_timeout():
	$Game_Player/Dialog/Terminal.set_visible_characters($Game_Player/Dialog/Terminal.get_visible_characters()+1)
	if($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		voice.stop()
		$Game_Player/Options/Button1/option1.set_visible_characters($Game_Player/Options/Button1/option1.get_visible_characters()+1)
		if(dictionary[page]["links"].size() > 1):
			$Game_Player/Options/Button2/option2.set_visible_characters($Game_Player/Options/Button2/option2.get_visible_characters()+1)
		
		
#Button 1 Action:

func _on_option1_ready():
	$Game_Player/Options/Button1/option1.set_bbcode(dictionary[page]["links"][0]["name"])
	$Game_Player/Options/Button1/option1.set_visible_characters(0)
		
func _on_Button1_pressed():
				
	if $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		if dictionary[page]["links"][0]["link"] == 'take':
			life.play()
		
		if dictionary[page]["links"][0]["name"] != 'UPGRADE':
			
			if dictionary[page]["links"][0]["link"] == "Uh??":
				$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("00ff3e"))
				character = 0
				voice.stream = load("res://samples/bunch_of_voices.ogg")
				
			if dictionary[page]["links"][0]["link"] == "neeko":
				$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("009999"))
				character = 2
				voice.stream = load("res://samples/diferent_voices.ogg")
				
			if dictionary[page]["links"][0]["link"] == "Okay, I will try, but I have some questions for you":
				$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("00ff3e"))
				character = 0
				voice.stream = load("res://samples/bunch_of_voices.ogg")
				
			page  = dictionary[page]["links"][0]["pid"]
			page = int(page) - 1
			
			voice.play(23.44)
			
			$Game_Player/Dialog/Terminal.set_bbcode(dictionary[page]["text"])
			$Game_Player/Dialog/Terminal.set_visible_characters(0)
			
			$Game_Player/Options/Button1/option1.set_bbcode(dictionary[page]["links"][0]["name"])
			$Game_Player/Options/Button1/option1.set_visible_characters(0)
			
			$Game_Player/Options/Button2/option2.set_visible_characters(0)
			if(dictionary[page]["links"].size() > 1):
				$Game_Player/Options/Button2.show()
				$Game_Player/Options/Button2/option2.set_bbcode(dictionary[page]["links"][1]["name"])
			else:
				$Game_Player/Options/Button2.hide()
				
		else:
			if dict_dialog.tutorial_scene == 1:
				page  = dictionary[page]["links"][0]["pid"]
				page = int(page) + 1
				dict_dialog.id = page
				get_tree().change_scene("res://scenes/tutorial/tutorial2.tscn")
			elif dict_dialog.tutorial_scene == 2:
				page  = dictionary[page]["links"][0]["pid"]
				page = int(page)
				dict_dialog.id = page
				get_tree().change_scene("res://scenes/tutorial/tutorial3.tscn")
			elif dict_dialog.tutorial_scene == 3:
				page  = dictionary[page]["links"][0]["pid"]
				page = int(page)
				dict_dialog.id = page
				get_tree().change_scene("res://scenes/tutorial/tutorial4.tscn")
			elif dict_dialog.tutorial_scene == 4:
				page = int(page)
				dict_dialog.id = page
				get_tree().change_scene("res://scenes/tutorial/tutorial5.tscn")

	else:
		$Game_Player/Dialog/Terminal.set_visible_characters($Game_Player/Dialog/Terminal.get_total_character_count())

# Button1 Style:

func _on_Button1_focus_entered():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("00ff3e"))
func _on_option1_mouse_entered():
	$Game_Player/Options/Button1.grab_focus()
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("00ff3e"))
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("008519"))
	
func _on_option1_gui_input(event):
	if Input.is_action_pressed("clickE") and $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		_on_Button1_pressed()
		
func _on_Button1_focus_exited():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("008519"))
func _on_option1_mouse_exited():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("008519"))


# Button 2 Action:

func _on_Button2_pressed():
	$Game_Player/Options/Button1.grab_focus()
	if $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		if dictionary[page]["links"].size() > 1:
			
			if dictionary[page]["links"][1]["link"] == "another_voice":
				$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("ff0000"))
				character = 1
				voice.stream = load("res://samples/diferent_voices.ogg")
			
			if dictionary[page]["links"][1]["link"] == "neeko":
				$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("009999"))
				character = 2
				voice.stream = load("res://samples/diferent_voices.ogg")
				
			page  = dictionary[page]["links"][1]["pid"]
			page = int(page) - 1
			
			voice.play(23.44)
			
			$Game_Player/Dialog/Terminal.set_bbcode(dictionary[page]["text"])
			$Game_Player/Dialog/Terminal.set_visible_characters(0)
			
			$Game_Player/Options/Button1/option1.set_bbcode(dictionary[page]["links"][0]["name"])
			$Game_Player/Options/Button1/option1.set_visible_characters(0)
			
			$Game_Player/Options/Button2/option2.set_visible_characters(0)
			if dictionary[page]["links"].size() > 1:
				$Game_Player/Options/Button2.show()
				$Game_Player/Options/Button2/option2.set_bbcode(dictionary[page]["links"][1]["name"])
			else:
				$Game_Player/Options/Button2.hide()
				
				
	else:
		$Game_Player/Dialog/Terminal.set_visible_characters($Game_Player/Dialog/Terminal.get_total_character_count())
	
func _on_option2_ready():
	if(dictionary[page]["links"].size() > 1):
		$Game_Player/Options/Button2/option2.set_bbcode(dictionary[page]["links"][1]["name"])
		
	$Game_Player/Options/Button2/option2.set_visible_characters(0)
	
# Button 2 Style:

func _on_Button2_focus_entered():
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("00ff3e"))
func _on_option2_mouse_entered():
	$Game_Player/Options/Button2.grab_focus()
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("00ff3e"))
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("008519"))
	
func _on_option2_gui_input(event):
	if Input.is_action_pressed("clickE") and $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		_on_Button2_pressed()
	
func _on_Button2_focus_exited():
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("008519"))
func _on_option2_mouse_exited():
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("008519"))


