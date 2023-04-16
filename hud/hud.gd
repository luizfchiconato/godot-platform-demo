extends CanvasLayer

var animated_health = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$HealthBar.value = animated_health
	
func update_health_bar(health):
	health = max(health, 0)
	
	$HealthBarBlue.value = health
	
	var tween := create_tween()
	
	tween.bind_node($HealthBar)
	tween.set_ease(Tween.EASE_IN)
	tween.tween_property(self, "animated_health", health, 1.0).from(animated_health)
