module bool

data bool = true|false


module cooking

data roomates = milos|spencer

isgoodcook: roomates->bool
isgoodcook milos = true
isgoodcook spencer = false  
