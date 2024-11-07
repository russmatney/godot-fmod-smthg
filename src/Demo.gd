extends CanvasLayer

@export var event_to_fire: FmodEventEmitter2D

@onready var fire_event_button = $%FireEventButton

func _ready():
	fire_event_button.pressed.connect(on_fire_event_pressed)

func on_fire_event_pressed():
	print("fire event pressed!")
	event_to_fire.play()
