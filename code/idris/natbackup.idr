module nat

import bool

%default total

data nat = O | S nat

isZero: nat -> bool
isZero O = true
isZero (S _)= false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n
 
