#	ReadCsv.gd
#   Written by Thomas Crow
#	Creation date: 12/11/2023
#	Last updated: 18/11/2023
# Function to read csv

#extends Node

# to read later 
# https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/importing_translations.html#:~:text=Godot%20will%20treat%20CSV%20files%20as%20translations%20by,runs%2C%20specified%20in%20project.godot%20%28or%20the%20project%20settings%29.

# webrequest to get csv from url
#https://docs.godotengine.org/en/stable/tutorials/networking/http_request_class.html



#https://ask.godotengine.org/40566/how-can-i-import-a-csv-or-txt-file
#https://ask.godotengine.org/148063/solved-how-do-you-do-file-new-in-4x
func read_csv(csv_path : String) :
	
	#check if url
	if csv_path.contains("http://") || csv_path.contains("https://"):
		pass
#		return get_asset_from_url(file_path)
	
	var file = FileAccess.open(csv_path, FileAccess.READ)

	var d = {}
	var columns = []

	var first_line = true

	while !file.eof_reached():
		var csv = file.get_csv_line ()

		if first_line :
			for col in csv :
				d[col] = []
				columns.append(col)
			continue

		for col in csv :
			for column in columns :
				d[column].append(col)

	file.close()


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
