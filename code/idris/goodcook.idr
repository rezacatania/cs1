module goodcook
import bool

data roomates = milos|spencer|scott
data quality = well|mediocrely

cooks: roomates -> quality
cooks milos = well
cooks scott = well
cooks spencer = mediocrely

bettercook: roomates -> roomates 
bettercook milos = spencer
bettercook spencer = scott

