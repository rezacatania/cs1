module food

import list
import bool
import nat


-- should be pretty clear
data quality = awful | goodenough | cvillemichelin

--price "twentysomething" can refer to either the price of an entree or the
--price of a meal that a well-paid twentysomething might eat on a date. Price
--price "parents" refers to restaurants that one waits for ones parents to
--take you to if you're lucky.

--each record represents a charlottesville restaurant. The data recorded
-- are good, price and openlate. I defined a new
-- type for good, price is 1 entree, and openlate is a bool.
record food where
  constructor mkFood
  name: String
  good : quality
  price: Nat
  openlate : bool

liljohns: food
liljohns = mkFood "Little John's" goodenough 7 true

bodos: food
bodos = mkFood "Bodo's" cvillemichelin 5 false

lemongrass: food
lemongrass = mkFood "Lemongrass" cvillemichelin 12 false

mas: food
mas = mkFood "Mas" cvillemichelin 20 false

roots: food
roots = mkFood "Roots" goodenough 9 false

collegeinn: food
collegeinn = mkFood "College Inn" awful 8 true
