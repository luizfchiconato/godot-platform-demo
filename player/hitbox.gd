class_name Hitbox extends Area2D

signal damage

# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionShape2D.disabled = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body: Node) -> void:
	print('teste')
	print(body.name)
	if body is Enemy:
		damage.emit()
