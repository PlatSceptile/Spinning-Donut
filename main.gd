extends Node2D

var speed = null


func _ready():
	speed = $WindowDialog/LineEdit.text
	get_tree().get_root().transparent_bg = true

func _process(delta):
	speed = $WindowDialog/LineEdit.text
	speed = float(speed)
	$Sprite.rotation_degrees = $Sprite.rotation_degrees + speed * delta
	
	if Input.is_action_pressed("ui_left"):
		OS.window_position.x = OS.window_position.x - 1
	if Input.is_action_pressed("ui_up"):
		OS.window_position.y = OS.window_position.y - 1
	if Input.is_action_pressed("ui_right"):
		OS.window_position.x = OS.window_position.x + 1
	if Input.is_action_pressed("ui_down"):
		OS.window_position.y = OS.window_position.y + 1
	if Input.is_action_just_pressed("ui_accept"):
		$WindowDialog.popup()
