extends Sprite

onready var fire_position = $FirePosition

export (PackedScene) var projectile_scene:PackedScene;

var container:Node

func fire():
	var new_projectile = projectile_scene.instance()		
	var fire_direction = (fire_position.global_position - global_position).normalized()
	container.add_child(new_projectile)
	new_projectile.initialize(fire_direction, fire_position.global_position)
