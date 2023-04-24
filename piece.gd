extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var main_image:Image
var main_texture:ImageTexture
var clickmap:BitMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func init(x,y):
	main_image = Image.new()
	main_image = load("res://icon.png")
	main_texture = ImageTexture.new()
	main_texture.create_from_image(main_image)
	clickmap = BitMap.new()
	clickmap.create_from_image_alpha(main_image,0.1)
	$TextureButton.texture_click_mask = clickmap
	$TextureButton.rect_position.x = x
	$TextureButton.rect_position.y = y
	$TextureButton.texture_normal = main_texture
	
func _draw():
	update()
