extends Node

@onready var musicPlayer: AudioStreamPlayer = AudioStreamPlayer.new()

@onready var musics = [
	preload("res://Assets/audio/music/bg_music.ogg"),
	preload("res://Assets/audio/music/bg_music2.ogg"),
	preload("res://Assets/audio/music/bg_music3.ogg")
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(musicPlayer)
	musicPlayer.stream = musics[0]
	musicPlayer.play()
	
func setMusic(type: int) -> void:
	musicPlayer.stop()
	musicPlayer.stream = musics[type]
	musicPlayer.play()
