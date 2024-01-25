extends Area2D


func _physics_process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.vec.x=5
	var y1 = Input.get_action_strength("玩家1上")*7
	var y2 = Input.get_action_strength("玩家1下")*7
	var y3 = position.y-y1+y2
	if y3 >16:
		if y3<630:
			position.y=position.y-y1+y2
