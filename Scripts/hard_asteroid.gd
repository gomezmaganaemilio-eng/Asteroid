extends A_Asteroid

var health: int = 10

func on_dmg_tkn() -> void:
	health -=1
	if (health <= 0 ): queue_free()
	pass


#Aqui puede poner de que cuado muera suelte power ups, o que se divida en tres o que aparezcan otras cosas
