module set

import list
import ite
import bool
import eq

|||mkSet is meant to be private
data set a = mkSet (list a)

||| a starting point for buiding any set
new_set: set a
new_set = mkSet nil

set_insert: (eq a) =>a -> set a -> set a
--set_insert v (mkSet l) = mkSet (v :: l)
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                            (mkSet (v :: l))

--set_insert2: a -> set a -> set a
--set_insert2 v (mkSet l) =

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet l1) (mkSet l2) = same_elements l1 l2

instance (eq a) => eq (set a) where
    eql s1 s2 = eql_set s1 s2
