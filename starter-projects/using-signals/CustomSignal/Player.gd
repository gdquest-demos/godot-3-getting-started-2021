extends Area2D

var health = 10


func take_damage(amount):
	health -= amount
	if health < 0:
		health = 0

	get_node("AnimationPlayer").play("take_damage")


func _on_area_entered(area):
	take_damage(2)
