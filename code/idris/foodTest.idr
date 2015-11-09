import food
import list
import relation
import bool
import pair

restaurants: list food
restaurants = (liljohns :: bodos :: lemongrass :: mas :: roots :: collegeinn :: nil)

avePricelate: pair Nat Nat
avePricelate = mkPair
           (query2 restaurants openlate price plus 0)
           (query2 restaurants openlate countOne plus 0)
--expect 7.5

avePriceLateAlt: pair Nat Nat
avePriceLateAlt= ave_rel restaurants openlate price
--expect 7.5

totPriceLate: Nat
totPriceLate = sum_rel restaurants openlate price
--expect 15

countOpenLate: Nat
countOpenLate = query2 restaurants openlate countOne plus 0
--expect 2

countOpenLateAlt: Nat
countOpenLateAlt = count_rel restaurants openlate
--expect 2
