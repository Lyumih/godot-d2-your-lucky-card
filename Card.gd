extends PanelContainer

signal card_clicked
signal show_card

export var show = false

func _ready():
	set_card("Card")
	pass
	
func hide_card():
	show = false
	
func show_card():
	show = true
	
func toggle_card():
	show = !show
	if (show): emit_signal("show_card")

func set_card(text):
	$VBoxContainer/CardValue.text = str(text)

func _process(delta):
	if (show): 
		$VBoxContainer/CardValue.show()
	else: $VBoxContainer/CardValue.hide()


func _on_Card_gui_input(event):
	if event is InputEventMouseButton and event.pressed:
		toggle_card()
	pass # Replace with function body.
