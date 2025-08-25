extends Node2D


@export var noise_height_text : NoiseTexture2D
@export var fast_noise : FastNoiseLite
var noise : Noise

@export var width : int = 0
@export var height : int = 0
@export var seed_setter : int = 1 #randi_range(1 , 1000000)
@onready var tile_map = $TileMap

var source_id = 0
var atlas_grass = Vector2i(0,0)
var atlas_dirt = Vector2i(1,0)
var atlas_water = Vector2i(2,0)
var atlas_tree_big = Vector2i(3,0)
var atlas_tree_small = Vector2i(4,0)


func _ready():
	noise = noise_height_text.noise
	fast_noise.seed = seed_setter
	generate_world()
	

func generate_world():
	
	tile_map.fix_invalid_tiles()
	
	@warning_ignore("integer_division")
	for x in range(-width/2, width/2):
		
		@warning_ignore("integer_division")
		for y in range(-height/2, height/2):
			
			var noise_val : float = noise.get_noise_2d(x,y)
			
			if noise_val <= -0.1:
				tile_map.set_cell(0, Vector2(x,y), 0, atlas_water)

			elif noise_val > -0.1 && noise_val < -0.07:
				tile_map.set_cell(0, Vector2(x,y), 0, atlas_dirt)
				
			elif noise_val >= -0.07 :
				tile_map.set_cell(0, Vector2(x,y), 0, atlas_grass)
				
				var temp: int = randi_range(1 , 20) #random trees (for now disabled)
				
				if (temp == 1 || temp == 10):
					tile_map.set_cell(1, Vector2(x-1,y-1), 1, atlas_tree_big)
					
				elif (temp == 20):
					tile_map.set_cell(1, Vector2(x-1,y-1), 1, atlas_tree_small)

	
#-0.6 - 0.5
