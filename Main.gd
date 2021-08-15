extends Node

var cards = []

func _ready():
	create_cards()
	randomize()
	pass
	
func create_cards():
	var suits = ["Пики", "Черви", "Бубны", "Крести"]
	var values = ["6","7","8","9","10", "Валет", "Дама", "Король", "Туз"]
	for suit in suits:
		for value in values: 
			cards.push_front(value +  "\n" + suit)
	

func _on_Card_show_card():
	$MarginContainer/VBoxContainer/CenterContainer/Card.set_card(cards[randi() % cards.size()])
	$MarginContainer/VBoxContainer/HUD.text = "Так выпала карта..."
