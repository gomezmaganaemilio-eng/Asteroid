@abstract class_name APowerUp extends RigidBody2D
@export var power1: AnimatedSprite2D
@export_range (100,1000,10) var speed: float =250
var area : Area2D
var on_grab: Signal

func _init() -> void:
	body_entered.connect(handle_grab)
	
	linear_velocity = Vector2.UP.rotated(randf()*2*PI)*speed
	angular_velocity = randf_range(-1,1) * PI / 2
	init()
	pass
	
	init()
	pass
	
@abstract func init() -> void
func handle_grab(other : CollisionObject2D)->void:
	if !(other is Ship): return
	print_debug("AAAAAA")
	activate()
	on_grab.emit(other as Ship)
	GameManager.me.remove_child(self)
	pass
	
@abstract func activate() -> void








# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	power1.play()
	pass
