extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func print_tree_pretty_custom(file: File, node: Node, prefix: String, last: bool) -> void:
	#write hierarchy tree normal
	#var new_prefix = " ┖╴" if last else " ┠╴"
	#file.store_string(prefix + new_prefix + node.get_name() + "\n")
	#var children = node.get_children()
	#for i in range(children.size()):
		#new_prefix = "   " if last else " ┃ "
		#print_tree_pretty_custom(file, children[i], prefix + new_prefix, i == (children.size() - 1))
	
	#write hiearchy tree graphviz
	#var parent_id = id+1
		#var id1 = id+1
	
	file.store_string("dot.node('" + node.get_name() + "', '" + node.get_name() + "')\n")
	var children = node.get_children()
	
	for i in range(children.size()):
		file.store_string("dot.edge('" + node.get_name() + "' , '" + children[i].get_name() + "')\n") 
	

	for i in range(children.size()):				
		print_tree_pretty_custom(file, children[i], "", i == (children.size()-1))
	
	#run python script
	var global_dir_path = ProjectSettings.globalize_path("res://")
	var ERR = OS.execute("python", [global_dir_path + "/helloworld.py"], true)

