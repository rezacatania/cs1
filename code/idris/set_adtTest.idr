import set_adt
import bool
import nat
import eq
import list

----------------------
l1: list bool
l1 = (true:: false::true:: nil)

l2: list bool
l2 = (true :: nil)

l3: list nat
l3 = (O :: (S O) :: (S (S O)) :: (S(S(S(S(S(S(S O))))))) :: nil)

l4: list nat
l4 = (S(S(S(S(S(S(S(S(S(S(S(S O))))))))))) :: nil)

l5: list nat
l5 = ((S O) :: S(S O) :: nil)

s1: set bool
s1 = mkSet (true::false::nil)

s2: set bool
s2 = mkSet (true ::nil)

s3: set nat
s3 = mkSet (O :: (S O) :: (S (S O)) :: S(S(S(S(S(S(S O)))))) :: nil)

s4: set nat
s4 = mkSet (S(S(S(S(S(S(S(S(S(S(S(S O))))))))))) :: nil)

--------------------------------



t1: set nat
t1 = set_remove (S O) s3
-- expect 0, 2, 7

t2: set nat
t2 = set_remove (S O) s4
-- expect no change to t2

t3: set bool
t3 = set_insert true (mkSet (false:: nil))
--expect MkSet true::false::nil

t4: set bool
t4 = set_insert true s2
--expect mkSet true::nil

t5: nat
t5 = set_cardinality s3
--expect 4

t6: nat
t6 = set_cardinality (mkSet (true :: false :: nil))
--expect 2

t7: bool
t7 = set_member (S O) s3
--expect true

t8: bool
t8 = set_member (S(S(S(S O)))) s4
--expect false

t9: set nat
t9 = set_union s4 s3
--12, 0, 1, 2, 7

t10: set nat
t10 = set_union s3 s4
--12,0,1,2,7 (different order)

t11: set bool
t11 = set_union (mkSet nil) s2
--expect a set with true

t12: set nat
t12 = set_intersection s3 s4

t13: set nat
t13 = set_intersection (mkSet (O :: (S O) :: S(S O) :: nil)) s3

t14: set nat
t14 = set_difference s3 s4
--expect all the numbers in both

t15: bool
t16 = set_forall oddb s3
--false
