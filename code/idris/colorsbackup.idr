module colors

import bool
import pair

% default total
data color = red | green | blue | cyan| magenta |yellow

additive: color-> bool
additive red = true
additive green = true
additive blue = true
additive cyan = false
additive magenta = false
additive yellow = false

complement: color -> color
complement red = cyan
complement green= magenta
complement blue = yellow
complement cyan = red
complement magenta = green
complement yellow = blue

subtractive: color -> bool
subtractive a = not(additive a)

complements: pair color color -> bool
complements (mkPair red cyan)= true
complements (mkPair green magenta) = true
complements (mkPair blue yellow) = true
complements (mkPair cyan red) = true
complements (mkPair magenta green) = true
complements (mkPair yellow blue) = true
complements (mkPair _ _) = false

  
