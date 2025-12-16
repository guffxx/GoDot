extends Button
var pressed_times = 0


func _ready():
	pressed.connect(counter)


func counter():
	pressed_times += 1
	text = "You clicked me " + str(pressed_times) + " times!"
	print("Pressed " + str(pressed_times))

	match pressed_times:
		5:
			text = "Please stop..."
		6:
			text = "seriously... stop this"
		7:
			text = "seriously... stop this."
		8:
			text = "seriously... stop this.."
		9:
			text = "seriously... stop this..."

	if pressed_times > 9:
		text = "You clicked me " + str(pressed_times) + " FUCKINGGG times!"
