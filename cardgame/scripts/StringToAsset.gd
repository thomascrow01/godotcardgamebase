#	StringToAsset.gd
#   Written by Thomas Crow
#	Creation date: 16/11/2023
#	Last updated: 17/11/2023
# Function to get an asset from a string, this could be a local asset or a web request

extends Node

func get_asset_from_url(url : String) : # https://ask.godotengine.org/40649/download-load-file-texture-into-sprite-node-using-httprequest
	var http = HTTPRequest.new()
	add_child(http)
	http.set_download_file("testfile")
	http.request(url)


func get_asset(file_path : String) :
	
	if file_path.contains("http://") || file_path.contains("https://"):
		return get_asset_from_url(file_path)
		
	return load(file_path)
