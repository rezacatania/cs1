module list_nat

import nat
import pair

{-useful for homework 7 october: data list a = nil | cons a (list a)
-}

data list_nat = nil | cons nat list_nat

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

{-
append: pair list_nat list_nat -> list_nat
append (mkPair nil (cons n l')) = (cons n l')
append (mkPair (cons n l') nil) = (cons n l')
append (mkPair (cons h t') (cons m p')) = cons h (append (mkPair (t') (cons m p')))
-}

append: list_nat -> list_nat -> list_nat
append nil (cons n l) = cons n l
append (cons n l) nil = cons n l
append (cons h t) (cons m p) = cons h (append t (cons m p))
