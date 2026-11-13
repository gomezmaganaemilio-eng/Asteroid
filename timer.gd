class_name  NeoTimer
var timer_left : float = 0 
var done: bool = false
var on_completion : Signal

func start(duration:float):
		timer_left = duration
		done = false
		pass 
	
func tick(delta:float)-> void:
		if done: return
		timer_left-=delta
		if(timer_left <= 0): 
			done = true
			timer_left = 0
			on_completion.emit()
pass
