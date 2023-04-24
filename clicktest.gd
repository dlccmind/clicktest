extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var piece1 = preload("res://piece.tscn").instance()
	var piece2 = preload("res://piece.tscn").instance()
	var piece3 = preload("res://piece.tscn").instance()
	piece1.init(100,100)
	piece2.init(130,130)
	piece3.init(160,160)
	add_child(piece1)
	add_child(piece2)
	add_child(piece3)

func _on_piece_click_event(node):
	#print("Clicked!")
	node.raise()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update()
