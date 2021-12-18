import os
import sys
import re
import graphviz

dot = graphviz.Digraph(comment='DevToolResults')

#INSERT DOT CODE BELOW


#END OF DOT CODE

dot.render('Graphviz_Dev', view=True)
