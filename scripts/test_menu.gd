extends Control

@onready var b1 = $Play1
@onready var b2 = $Play2
@onready var b3 = $Play3
@onready var b6 = $Play6
@onready var b4 = $Play4
@onready var b5 = $Play5
@onready var e1 = $Exit1
@onready var e2 = $Exit2
@onready var e3 = $Exit3
@onready var s1 = $Settings1

func _on_play_1_button_down() -> void:
	b1.disabled = true
	s1.disabled = true
	e1.disabled = true
	b2.visible = true
	b3.visible = true
	b6.visible = true
	b2.disabled = false
	b3.disabled = false
	b6.disabled = false

func _on_play_6_button_down() -> void:
	b1.disabled = false
	s1.disabled = false
	e1.disabled = false
	b2.visible = false
	b2.disabled = true
	b3.visible = false
	b3.disabled = true
	b6.visible = false
	b6.disabled = true

func _on_play_2_button_down() -> void:
	b2.disabled = true
	b3.disabled = true
	b6.disabled = true
	b4.visible = true
	b4.disabled = false
	b5.visible = true
	b5.disabled = false

func _on_play_5_button_down() -> void:
	b2.disabled = false
	b3.disabled = false
	b6.disabled = false
	b4.visible = false
	b4.disabled = true
	b5.visible = false
	b5.disabled = true

func _on_exit_1_button_down() -> void:
	b1.disabled = true
	s1.disabled = true
	e1.disabled = true
	e2.disabled = false
	e2.visible = true
	e3.disabled = false
	e3.visible = true

func _on_exit_3_button_down() -> void:
	b1.disabled = false
	s1.disabled = false
	e1.disabled = false
	e2.disabled = true
	e2.visible = false
	e3.disabled = true
	e3.visible = false

func _on_exit_2_button_down() -> void:
	get_tree().quit()

func _on_debug_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/debug_scene.tscn")
