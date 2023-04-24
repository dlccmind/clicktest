extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal piece_clicked(node)

# Called when the node enters the scene tree for the first time.
func _ready():
	var _err = connect("piece_clicked",self.get_parent().get_parent(),"_on_piece_click_event")

func _gui_input(event):
	if event is InputEventMouseMotion:
		pass
	else:
		print(event.as_text())
		print(self.to_string())
	if event is InputEventScreenTouch:
		if event.pressed:
			print("Index: " + String(event.index))
			emit_signal("piece_clicked", self.get_parent())
		else:
			pass
		get_tree().set_input_as_handled()
