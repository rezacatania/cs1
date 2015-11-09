module dna

import list
import pair
import bool
import ite
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand a = map complement_base a

base1: pair base base -> base
base1 (mkPair a b) = a

base2: pair base base -> base
base2 (mkPair a b) = b

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 (h :: t) = (base1 h) :: (strand1 t)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 (h :: t) = (base2 h) :: (strand2 t)

complete: list base -> list (pair base base)
complete nil = nil
complete (h :: t) = (mkPair h (complement_base h)) :: (complete t)

isA: base -> nat
isA A = (S O)
isA _ = O

isT: base -> nat
isT T = (S O)
isT _ = O

isC: base -> nat
isC C = (S O)
isC _ = O

isG: base -> nat
isG G = (S O)
isG _ = O

countBase: (list base) -> base -> nat
countBase nil b = O
countBase a A = list.foldr add O (map isA a)
countBase a T = list.foldr add O (map isT a)
countBase a C = list.foldr add O (map isC a)
countBase a G = list.foldr add O (map isG a)
