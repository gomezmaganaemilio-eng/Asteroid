@abstract class_name A_Asteroid extends RigidBody2D

var onDmgTkn: Signal
@export_range (0 ,500) var reward : int = 10
var on_dmg_tkn_signal :Signal

func _ready() -> void:
	body_entered.connect(damage_ship)
	pass
	
func damage_ship(other:RigidBody2D) -> void:
	if !(other is Ship): return
	(other as Ship)._take_dmg()
	pass

func take_dmg() -> void:
	GameManager.score += 10
	on_dmg_tkn()
	on_dmg_tkn_signal.emit()
	pass
			
@abstract func on_dmg_tkn() -> void
	
