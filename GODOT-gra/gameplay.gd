extends Node2D
var enemy_sownica = preload("res://przeszkody.tscn")
var enemy_tyl_nog = preload("res://przeszkody_2.tscn")
var strzykawa = preload("res://strzykawa.tscn")

@onready var dead_text = $DeadText

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	pass # Replace with function body.
	var sownica = enemy_sownica.instantiate()
	sownica.position = Vector2(randf_range(50,500),0)
	add_child(sownica)

func _on_timer_timeout2() -> void:
	pass # Replace with function body.
	var tyl_nog = enemy_tyl_nog.instantiate()
	tyl_nog.position = Vector2(500,randf_range(50,500))
	add_child(tyl_nog)

func _on_timer_timeout3() -> void:
	var strzykawa = strzykawa.instantiate()
	strzykawa.position = Vector2(randf_range(50,500),randf_range(50,500))
	add_child(strzykawa)

func _on_area_2d_area_entered(area: Area2D) -> void:
	var player = get_node("CharacterBody2D")
	if player:
		player.alive = false
		player.visible = false
		dead_text.visible = true
