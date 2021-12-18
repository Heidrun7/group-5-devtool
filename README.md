# Devtool
A tool to generate documentation for node hierarchies in a Godot project.

# How to use
## Prerequisites
1. A running Godot project
2. Have graphviz installed for Python
```
pip install graphviz
```

## Files in use
1. printScript.gd
2. printScript.tscn
3. helloworld.py
4. gdScript.txt

## Running the devtool
1. Add the four files to the Godot project's root (res:// folder)
    1. Choose the correct printScript.gd version from either the folder printScript_Mac or printScript_Windows and make sure the file itself is in the same root folder as the other devtool files
2. Add the code from gdScript.txt to the desired GDScript file in the Godot project
3. Run the project
4. Copy the dot code in devTree.txt (generated during runtime) and insert into helloworld.py
5. Run the project again to generate the correct image

## Notes

