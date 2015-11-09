module listTest

import list
import banger
import eq

--uses b1-b4 constructors from bangersinc
listTestA: list
listTestA = cons b4 (cons b3 (cons b2 (cons b1 nil)))

listTestB: list
listTestB = cons 12 (cons b3 (cons b2 nil))

listTestC: list
listTestC = nil

lengthTestA: Nat
lengthTestA = length (listTestA)
--expect 4

lengthTestC: Nat
lengthTestC = length (listTestC)
--expect 0

appendTestA: list
appendTestA = append listTestA listTestB
--expect one list of 7

appendTestB: list
appendTestB = append listTestA listTestC
--expect one list of 4

finaltest: Nat
finaltest = length (append listTestA listTestB)
--expect 7

isThree: bool
isThree =  (member (S(S(S O))) l2)
