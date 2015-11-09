module dnaTest

import dna
import list
import pair
import nat

t1: list base
t1 = map complement_base (A :: T :: C :: G :: nil)
-- expect T, A, G, C
--note: this is the test case for complement_base

l1: list base
l1 = (A :: T :: C :: G :: nil)

t2: list base
t2 = complement_strand l1
--expect T, A, G, C

l2: list (pair base base)
l2 =((mkPair A T) :: (mkPair C G) :: (mkPair T A) :: nil)

t3: list base
t3 = strand1 l2
-- expect A C T

t4: list base
t4 = strand2 l2
--expect T G A

t5: list (pair base base)
t5 = complete (l1)
--expect AT TA CG GC

t6: nat
t6 = countBase l1 A
--expect 1

t7: nat
t7 = countBase l1 T
--expect 1

t8: nat
t8 = countBase l1 C
--expect 1

t9: nat
t9 = countBase l1 G
--expect 1

l3: list base
l3 = (A :: T :: T :: T :: T :: A :: C :: C :: T :: nil)

t10: nat
t10 = countBase l3 A
-- expect 2

t11: nat
t11 = countBase l3 T
--expect 5

t12: nat
t12 = countBase l3 C
--expect 2

t13: nat
t13 = countBase l3 G
--expect 0
