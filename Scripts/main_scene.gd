class_name GameManager extends Node2D
static  var score: int = 0
static var HP: int = 3
static var me: Node2D
static var continuos_actions: Signal
# Awake
func _init() -> void:
	print_debug("Game Started")
	me = self
	score = 0
	HP = 3
	pass


#Start
func _ready() -> void:
	
	pass 


# Update
func _process(delta: float) -> void:

	pass
#Fixed Update
func _physics_proccess(delete: float) -> void: 
	continuos_actions.emit()
	pass

static func delay_action(action: Callable, delay:float) -> void:
	await me.get_tree().create_timer(delay).timeout
	action.call()
	pass
	
